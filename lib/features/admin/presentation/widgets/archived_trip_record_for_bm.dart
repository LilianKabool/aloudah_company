import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_trip_information_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_trip_information_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_trip_information_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trip_record_text.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_info_trips_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../branchManager/controllers/get_trip_information_cubit.dart';
import '../screens/archived_manifest_screen_for_admin.dart';
import 'archived_trip_details_2_for_admin.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';
import 'logo_image_widget.dart';

class ArchivedTripRecordForBM extends StatefulWidget {
  final String id;

  final String manifest_id;
  // final String manifest_number;

  final String trip_number;

  const ArchivedTripRecordForBM({super.key,
    required this.id,
    required this.manifest_id,
    required this.trip_number,
    // required this.manifest_number,
  });

  @override
  State<ArchivedTripRecordForBM> createState() => _ArchivedTripRecordForBMState();
}

class _ArchivedTripRecordForBMState extends State<ArchivedTripRecordForBM> {

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
    cubit.emitGetTripsInfo(getInfoTripsParams: GetInfoTripsParams(tripNumber: widget.trip_number),);
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
     double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
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
                const LogoImageWidget(),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          BlocConsumer<GetTripInfoCubit , GetState<GetTripInfoEntity>>(
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
                  return  Column(
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
                                    '${data.data.date}',
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
                      const DividerBetweenListElements(),
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
                                    data.data.status,
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
                      const DividerBetweenListElements(),
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
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.truckName,
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
                      const DividerBetweenListElements(),
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
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.driverName,
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
                      const DividerBetweenListElements(),
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
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.branchName,
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
                      const DividerBetweenListElements(),
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
                                    data.data.destinationName,
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
                      const DividerBetweenListElements(),
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
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.createdBy.toString(),
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
                      const DividerBetweenListElements(),
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
                                    '${data.data.editedBy}',
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
                      const DividerBetweenListElements(),
                    ],
                  );
                },
              );
            },

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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArchivedManifestScreenForBM(number:number)));
        },
        backgroundColor: AppColors.darkBlue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }
}
