import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class SourceDestInOrderDetailsForAdmin extends StatelessWidget {
  String source = 'Damascus';
  String destination = 'Daraa';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Source',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureBlack,
                    fontSize: 16.sp,
                  ),
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColors.darkBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${source}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureWhite,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Destination',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureBlack,
                    fontSize: 16.sp,
                  ),
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      '${destination}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
