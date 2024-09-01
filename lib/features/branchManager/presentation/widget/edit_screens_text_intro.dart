import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class EditScreensTextIntro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage('assets/images/Logo2.png'),
            width: 33.w,
            height: 34.h,
          ),
          Text(
            'Please Enter The New Information',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image(
            image: AssetImage('assets/images/Logo2.png'),
            width: 33.w,
            height: 34.h,
          ),
        ],
      ),
    );
  }

}