import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class ButtonsRowB_ManagerMainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: (){},
            shape: CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: Icon(
              Icons.notifications,
              color: AppColors.darkBlue,
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            shape: CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: Icon(
              Icons.report_problem,
              color: AppColors.darkBlue,
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            shape: CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: Text(
              'EN',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

}