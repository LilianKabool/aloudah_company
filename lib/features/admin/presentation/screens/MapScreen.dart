import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/params/add_branch_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/add_branch_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/error/network_exceptions.dart';

class MapScreenForAdmin extends StatefulWidget {
  var address = TextEditingController();
  var desk = TextEditingController();
  var phone = TextEditingController();

  MapScreenForAdmin({
    super.key,
    required this.phone,
    required this.address,
    required this.desk,
  });

  @override
  _MapScreenForAdminState createState() => _MapScreenForAdminState();
}

class _MapScreenForAdminState extends State<MapScreenForAdmin> {
  GoogleMapController? _controller;
  LatLng _currentPosition = LatLng(37.4219999, -122.0840575);
  Marker? _marker;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _checkPermissionAndFetchLocation();
  }

  Future<void> _checkPermissionAndFetchLocation() async {
    if (await _handleLocationPermission()) {
      _getCurrentLocation();
    } else {
      setState(() {
        _permissionDenied = true;
      });
    }
  }

  Future<bool> _handleLocationPermission() async {
    var status = await Permission.locationWhenInUse.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      status = await Permission.locationWhenInUse.request();
      return status.isGranted;
    }
    return false;
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        _currentPosition = LatLng(position.latitude, position.longitude);
      });
      _controller?.animateCamera(CameraUpdate.newLatLng(_currentPosition));
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  void _onMapTapped(LatLng position) {
    setState(() {
      _marker = Marker(
        markerId: MarkerId('selected-location'),
        position: position,
      );
    });
    print('Marker placed at: ${position.latitude}, ${position.longitude}');
  }

  Widget _buildMap() {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: _currentPosition,
        zoom: 14.0,
      ),
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
        _getCurrentLocation();
      },
      markers: _marker != null ? {_marker!} : {},
      onTap: _onMapTapped,
    );
  }

  Widget _buildPermissionDeniedMessage() {
    return Center(
      child: Text(
        'Location permissions are denied. Please enable permissions in settings.',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _permissionDenied ? _buildPermissionDeniedMessage() : _buildMap(),
      floatingActionButton: _permissionDenied
          ? null
          : Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _getCurrentLocation,
            child: Icon(Icons.my_location),
            heroTag: 'location', // Unique hero tag
          ),
          SizedBox(height: 10),
          BlocConsumer<AddBranchCubit, PostState<BaseEntity>>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return FloatingActionButton(
                    onPressed: () {
                      if (_marker != null) {
                        context.read<AddBranchCubit>().emitAddBranch(
                          addBranchParams: AddBranchParams(
                            address: widget.address.text,
                            desk: widget.desk.text,
                            phone: widget.phone.text,
                            branch_lat: _marker!.position.latitude,
                            branch_lng: _marker!.position.longitude,
                          ),
                        );
                        print(
                          'Executing request for marker at: ${_marker!.position.latitude}, ${_marker!.position.longitude}',
                        );
                      } else {
                        print('No marker to execute request for.');
                      }
                    },
                    child: Icon(Icons.add),
                    heroTag: 'add', // Unique hero tag
                  );
                },
                idle: () {
                  return FloatingActionButton(
                    onPressed: () {
                      if (_marker != null) {
                        context.read<AddBranchCubit>().emitAddBranch(
                          addBranchParams: AddBranchParams(
                            address: widget.address.text,
                            desk: widget.desk.text,
                            phone: widget.phone.text,
                            branch_lat: _marker!.position.latitude,
                            branch_lng: _marker!.position.longitude,
                          ),
                        );
                        print(
                          'Executing request for marker at: ${_marker!.position.latitude}, ${_marker!.position.longitude}',
                        );
                      } else {
                        print('No marker to execute request for.');
                      }
                    },
                    child: Icon(Icons.add),
                    heroTag: 'add_idle', // Unique hero tag
                  );
                },
                loading: () {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
            listener: (context, state) {
              state.whenOrNull(
                success: (data) {
                  Fluttertoast.showToast(
                    msg: data.message,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: CupertinoColors.activeBlue,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                error: (networkExceptions) {
                  Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(networkExceptions),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: CupertinoColors.activeBlue,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
