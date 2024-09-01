import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class SearchInTrucksListForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 45.h,
        child: Row(
          children: [
            Expanded(
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
            ),
            SizedBox(
              width: screenWidth/50,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.tune,
                color: AppColors.darkBlue,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.lightBlue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}