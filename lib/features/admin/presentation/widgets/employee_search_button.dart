import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class SearchEmployeeButton extends StatelessWidget{
  const SearchEmployeeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.lightBlue,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            ),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: AppColors.darkBlue,
            fontFamily: 'bahnschrift',
          ),
        ),
      ),
    );
  }

}