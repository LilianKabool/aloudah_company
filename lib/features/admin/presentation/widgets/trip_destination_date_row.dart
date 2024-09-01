import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class TripDestinationDateRow extends StatelessWidget{
  const TripDestinationDateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Trip',
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
              'Destination',
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
              'Date',
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
