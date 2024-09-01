import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class SearchInTrucksListForEmployee extends StatelessWidget{
  const SearchInTrucksListForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
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
            ),
            SizedBox(
              width: screenWidth/50,
            ),
            FloatingActionButton(
              onPressed: () {},
              elevation: 0.0,
              backgroundColor: AppColors.lightBlue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(
                  color: AppColors.darkBlue,
                ),
              ),
              child: const Icon(
                Icons.tune,
                color: AppColors.darkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }

}