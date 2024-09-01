import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';

import '../screens/branch_manager/open_trip_record_for_b_manager.dart';

class OpenTripItemForB_Manager extends StatelessWidget {
  final String openTripName;

  final String manifestId;

  final String trip_date;

  final String trip_status;

  final String trip_truck;
  final String trip_driver;

  final String branch;

  final String destination;

  final String creator_name;
  final String editor_name;

  OpenTripItemForB_Manager({
    required this.openTripName,
    required this.manifestId,
    required this.branch,
    required this.trip_date,
    required this.trip_driver,
    required this.trip_status,
    required this.trip_truck,
    required this.destination,
    required this.creator_name,
    required this.editor_name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${openTripName}',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Container(
              height: 35.h,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpenTripRecordForB_Manager(
                                manifest_id: manifestId,
                                trip_truck: trip_truck,
                                trip_status: trip_status,
                                trip_date: trip_date,
                                editor_name: editor_name,
                                creator_name: creator_name,
                                trip_driver: trip_driver,
                                branch: branch,
                                destination: destination,

                              )));
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
