import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class TruckTripsItem extends StatelessWidget{

  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //هون بدو يوديني لتفاصيل الرحلة
      },
      child: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h ),
        margin: EdgeInsets.symmetric(horizontal: 20.0.w),
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${trip}',
                      style: TextStyle(
                        color: AppColors.mediumBlue,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '${date}',
                      style: TextStyle(
                        color: AppColors.mediumBlue,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${driver}',
                      style: TextStyle(
                        color: AppColors.mediumBlue,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.directions,
                      color: AppColors.yellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}