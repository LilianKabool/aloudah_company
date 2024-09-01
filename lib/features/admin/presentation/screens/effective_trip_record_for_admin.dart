import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/effective_trip_detials_2_for_admin.dart';
import '../widgets/logo_image_widget.dart';
import '../widgets/trip_record_text.dart';
import 'manifest_screen_for_admin.dart';
//33333333333
class EffectiveTripRecordForAdmin extends StatelessWidget {
  final String activeTripName;

  final int activeTripId;

  final  manafistId;

  final String tripDate;

  final String tripStatus;

  final String tripTruck;

  final String tripDriver;

  final int branchId;

  final String branchName;

  final String destination;

  // final int employeeId;

  final String creatorName;

  final String editorName;

  const EffectiveTripRecordForAdmin({super.key, 
    required this.activeTripId,
    required this.manafistId,
    required this.tripTruck,
    required this.tripStatus,
    required this.tripDriver,
    required this.tripDate,
    required this.editorName,
    required this.destination,
    required this.creatorName,
    required this.branchName,
    required this.branchId,
    required this.activeTripName,
  });

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
                    'Manifest  $manafistId',
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
                            tripDate,
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
                            tripStatus,
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
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       //todo:
                          //         builder: (context) => ViewTruckForAdmin()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              tripTruck,
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
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       //todo:
                          //         builder: (context) => ViewDriverForAdmin()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              tripDriver,
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
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ViewBranchForAdmin(
                          //               branchId: branchId,
                          //             ),
                          //     ),);
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              branchName,
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
                            destination,
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
                      child: GestureDetector(
                        onTap: () {
                          //todo:
                          // Navigator.push(context, MaterialPageRoute(builder:(context)=> ViewEmployeeForAdmin()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              creatorName,
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
                            editorName,
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
          ),
          //todo:
          EffectiveTripDetails2ForAdmin(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                //todo:
                  builder: (context) => ManifestScreenForAdmin(manifest_id:activeTripName.toString())));
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
