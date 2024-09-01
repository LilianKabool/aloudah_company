
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/trips_search_screen.dart';

class EffevtiveTripSearchButtonForEmployee extends StatelessWidget {
  const EffevtiveTripSearchButtonForEmployee({super.key});


  void bottomSheetForTripSearch(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const TripsSearchScreen();
      },
      backgroundColor: AppColors.pureWhite,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        bottomSheetForTripSearch(context);
      },
      child: Container(
        height: 40.h,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: AppColors.lightBlue,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: AppColors.darkBlue,
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: AppColors.darkBlue,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Search',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 17.sp,
                fontFamily: 'Bauhaus',
              ),
            ),
          ],
        ),
      ),
    );
  }

}