import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/manifest_screen_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_branch_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_employees_powers_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_truck_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_between_list_elements.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/logo_image_widget.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/open_trip_details_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/open_trip_detials_2_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../../admin/presentation/widgets/trip_record_text.dart';
import '../../widget/divider_item.dart';

class OpenTripRecordForB_Manager extends StatelessWidget {
  final String manifest_id;

  final String trip_date;

  final String trip_status;

  final String trip_truck;
  final String trip_driver;

  final String branch;

  final String destination;

  final String creator_name;
  final String editor_name;

  OpenTripRecordForB_Manager({
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
                    'Manifest  ${manifest_id}',
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
                            '${trip_date}',
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
                            '${trip_status}',
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             ViewTruckForB_Manager()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${trip_truck}',
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
                              '${trip_driver}',
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
                          //         builder: (context) =>
                          //             ViewBranchForB_Manager()));
                        },
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${branch}',
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
                            '${destination}',
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
                              '${creator_name}',
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
                            '${editor_name}',
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
          //todo:
       //   OpenTripDetails2ForB_Manager(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ManifestScreenForB_Manager(manifest_id: manifest_id,


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
