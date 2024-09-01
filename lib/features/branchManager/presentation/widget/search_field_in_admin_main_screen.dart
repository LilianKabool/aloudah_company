import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';

class SearchFieldInAdminMainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      child: TextFormField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkBlue,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.r),
            ),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: AppColors.darkBlue,
            // fontSize: 14.0,
            fontFamily: 'Bahnschrift',
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }

}