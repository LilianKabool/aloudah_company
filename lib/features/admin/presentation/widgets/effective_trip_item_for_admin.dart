import 'package:aloudeh_company/features/admin/presentation/screens/effective_trip_record_for_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
//222222222222d
class EffectiveTripItemForAdmin extends StatelessWidget {
  final String activeTripName;

  final int activeTripId;

  final int manafistId;

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

  const EffectiveTripItemForAdmin({super.key, 
    required this.activeTripName,
    required this.activeTripId,
    required this.manafistId,
    required this.branchId,
    // required this.employeeId,
    required this.branchName,
    required this.creatorName,
    required this.destination,
    required this.editorName,
    required this.tripDate,
    required this.tripDriver,
    required this.tripStatus,
    required this.tripTruck,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              activeTripName,
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
                      builder: (context) => EffectiveTripRecordForAdmin(
                        activeTripId: activeTripId,
                        manafistId: manafistId,
                        branchId: branchId,
                        activeTripName: activeTripName,
                        branchName: branchName,
                        creatorName: creatorName,
                        destination: destination,
                        tripDate: tripDate,
                        editorName: editorName,
                        tripDriver: tripDriver,
                        tripStatus: tripStatus,
                        tripTruck: tripTruck,
                      ),
                    ));
              },
              icon: const Icon(
                Icons.remove_red_eye,
                color: AppColors.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
