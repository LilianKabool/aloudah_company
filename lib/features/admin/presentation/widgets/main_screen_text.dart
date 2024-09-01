import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class MainScreenText extends StatelessWidget{
  const MainScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Ma',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: AppColors.yellow,
            ),
          ),
          TextSpan(
            text: 'in ',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: const Color.fromRGBO(14, 27, 57, 1),
            ),
          ),
          TextSpan(
            text: 'Sc',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: const Color.fromRGBO(14, 27, 57, 1),
            ),
          ),
          TextSpan(
            text: 'reen',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: const Color.fromRGBO(222, 164, 22, 1),
            ),
          ),
        ],
      ),
    );
  }

}