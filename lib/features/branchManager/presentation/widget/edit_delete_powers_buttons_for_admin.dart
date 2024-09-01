import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class EditDeletePowersButtonsForAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>AddBranchScreen()));
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: AppColors.mediumBlue,
                ),
              ),
              backgroundColor: AppColors.darkBlue,
              heroTag: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>AddBranchScreen()));
              },
              child: Text(
                'Delete',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: AppColors.darkBlue,
                ),
              ),
              backgroundColor: AppColors.yellow,
              heroTag: 9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
