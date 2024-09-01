import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class SearchInEmpCategoriesScreen extends StatelessWidget{
  const SearchInEmpCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.r),
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: AppColors.darkBlue,
            // fontSize: 14.0,
            fontFamily: 'Bahnschrift',
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }

}