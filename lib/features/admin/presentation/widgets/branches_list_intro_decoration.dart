import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class BranchesListIntroDecoration extends StatelessWidget{
  const BranchesListIntroDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_left,
                  color: AppColors.yellow,
                ),
              ),
              Image(
                image: const AssetImage('assets/images/Logo3.png'),
                width: 100.w,
                height: 100.h,
              ),
            ],
          ),
          Text(
            'Hello Again !',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'This is A Branches List ',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'You Can Choose One Of Them',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Image(
              image: const AssetImage('assets/images/Location.png'),
              width: 170.w,
              height: 170.h,
            ),
          ),
        ],
      ),
    );
  }

}