import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class SearchArchivedEmployeeButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.lightBlue,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: AppColors.darkBlue,
            fontFamily: 'bahnschrift',
          ),
        ),
      ),
    );
  }

}