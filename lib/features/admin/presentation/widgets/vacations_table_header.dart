import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class VacationsTableHeader extends StatelessWidget{
  const VacationsTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'Start',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'End',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Reason',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Create',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),

        ],
      ),
    );
  }

}
