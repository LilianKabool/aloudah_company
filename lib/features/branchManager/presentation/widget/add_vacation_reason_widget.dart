import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class AddVacationReasonWidget extends StatelessWidget{

  var vacation_reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
          ),
          Container(
            height: 100.h,
            color: AppColors.mediumBlue,
            child: TextFormField(
              controller: vacation_reason,
              cursorColor: AppColors.darkBlue,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis
              ),
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.mediumBlue,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

}