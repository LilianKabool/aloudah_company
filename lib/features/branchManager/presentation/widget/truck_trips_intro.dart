import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class TruckTripsIntro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        children: [
          Icon(
            Icons.directions_bus,
            color: AppColors.yellow,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            'Truck Trips',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
        ],
      ),
    );
  }

}