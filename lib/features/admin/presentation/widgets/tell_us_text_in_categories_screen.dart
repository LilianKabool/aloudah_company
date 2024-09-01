import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class TellUsScreenInCategoriesScreen extends StatelessWidget{
  const TellUsScreenInCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tell us',
          style: TextStyle(
            color: AppColors.darkBlue,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bauhaus',
            fontSize: 20.sp,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'where do you want to go?',
          style: TextStyle(
            color: AppColors.darkBlue,
            fontFamily: 'bahnschrift',
            fontSize: 18.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

}