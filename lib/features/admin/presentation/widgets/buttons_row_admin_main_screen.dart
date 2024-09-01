import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class ButtonsRowAdminMainScreen extends StatelessWidget{
  const ButtonsRowAdminMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: (){},
            shape: const CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: const Icon(
              Icons.notifications,
              color: AppColors.darkBlue,
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            shape: const CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: const Icon(
              Icons.report_problem,
              color: AppColors.darkBlue,
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            shape: const CircleBorder(
              side: BorderSide(
                color: AppColors.darkBlue,
              ),
            ),
            backgroundColor: AppColors.pureWhite,
            elevation: 0.0,
            child: const Text(
              'EN',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

}