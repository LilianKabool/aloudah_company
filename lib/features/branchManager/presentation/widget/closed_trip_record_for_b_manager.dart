import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_trip_information_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../data/params/get_info_trips_params.dart';
import '../../presentation/screens/branch_manager/manifest_screen_for_b_manager.dart';
import '../../presentation/widget/divider_between_list_elements.dart';
import '../../presentation/widget/open_trip_details_for_b_manager.dart';
import '../../presentation/widget/open_trip_detials_2_for_b_manager.dart';
import '../../presentation/widget/logo_image_widget.dart';
import '../../presentation/widget/trip_record_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/branch_manager/closed_manifest_for_b_manager.dart';
import 'closed_trip_details_2_for_b_manager.dart';
import 'closed_trip_details_for_b_manager.dart';
import 'divider_item.dart';

class ClosedTripRecordForB_Manager extends StatefulWidget {
  final String manifest_id;
  // final String manifestNumber;

  final String trip_date;
  final String trip_status;

  final String trip_truck;
  final String trip_driver;
  // late final String number;

  final String branch;

  final String destination;

  final String creator_name;
  final String editor_name;
  final String TripNumber;
  final String desk;
  ClosedTripRecordForB_Manager(
      {

        required this.TripNumber,
        required this.desk,
        // required this.number,
        required this.manifest_id,
        required this.branch,
        required this.trip_date,
        required this.trip_status,
        required this.trip_truck,
        required this.destination,
        required this.creator_name,
        required this.editor_name,
        required this.trip_driver,

         });

  @override
  State<ClosedTripRecordForB_Manager> createState() => _ClosedTripRecordForB_ManagerState();
}

class _ClosedTripRecordForB_ManagerState extends State<ClosedTripRecordForB_Manager> {
  late final String number;
  late final String general;

  late final String miscPaid;

  late final String netTotal;

  late final String against_shipping;

  late final String adapter;

  late final String advance;

  late final String  collection;

  late final String discount;

  late GetTripInfoCubit cubit;


  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTripInfoCubit>();
    cubit.emitGetTripsInfo(getInfoTripsParams: GetInfoTripsParams(tripNumber:widget.TripNumber ));
  }
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  ${widget.manifest_id}',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 6.3,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${widget.trip_date}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Status',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 8.1,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${widget.trip_status}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Truck',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 7,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          //  Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTruckForB_Manager()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${widget.trip_truck}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Driver',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 7.8,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewDriverForAdmin()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${widget.trip_driver}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Branch',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 9.1,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ViewBranchForB_Manager()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${widget.branch}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Destination',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 35,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${widget.destination}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 8.1,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             ViewEmployeesPowersForB_Manager()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${widget.creator_name}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 5.6,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${widget.editor_name}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DividerBetweenListElements(),
            ],
          ),
          BlocConsumer<GetTripInfoCubit, GetState<GetTripInfoEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                error: (NetworkExceptions exception) {
                  Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(exception),
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(child: Text("No data available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) {
                  general = data.data.manifest.generalTotal;
                  against_shipping = data.data.manifest.againstShipping;
                  discount = data.data.manifest.discount.toString();
                  adapter = data.data.manifest.adapter.toString();
                  netTotal = data.data.manifest.netTotal;
                  miscPaid = data.data.manifest.miscPaid.toString();
                  advance = data.data.manifest.advance.toString();
                  collection = data.data.manifest.collection;
                  number= data.data.manifest.number ;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'General Total',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${general}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Against Shipping',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${against_shipping}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Discount',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${discount}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Adapter',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${adapter}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Net Total',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${netTotal}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Advance',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${advance}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Misc.Paid',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${miscPaid}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                        Container(
                          width: double.infinity,
                          child: Material(
                            elevation: 1.0,
                            child: Column(
                              children: [
                                Text(
                                  'Collection',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureBlack,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '${collection.toString()}',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.yellow,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SpaceItem(),
                      ],
                    ),
                  );
                },
              );
            },
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //todo:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => colsedTripsManifestScreenForB_Manager(
                    trip_number: number ,
                  )));
        },
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }
}
