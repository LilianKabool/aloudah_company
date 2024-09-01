import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/trips_search_screen.dart';


class ArchivedTripSearchButtonAdmin extends StatelessWidget {
  const ArchivedTripSearchButtonAdmin({super.key});


  void bottomSheetForPayments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const TripsSearchScreen();
      },
      backgroundColor: AppColors.pureWhite,
      // shape: OutlineInputBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      //   borderSide: BorderSide(color: AppColors.darkBlue),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        bottomSheetForPayments(context);
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