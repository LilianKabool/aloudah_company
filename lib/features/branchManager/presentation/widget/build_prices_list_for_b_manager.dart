
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../admin/presentation/widgets/space_item.dart';

class buildPricesListForB_Manager extends StatelessWidget{

  String material_type = 'Table';
  String weight = '1 Kg';
  String price = '200';

  Widget PricesRowItemB_Manager() => Padding(
    padding: const EdgeInsets.only(left: 20.0,right: 10.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${material_type}',
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
              color: AppColors.darkBlue,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Center(
              child: Text(
                '${weight}',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Center(
              child: Text(
                '${price}',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureWhite,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PricesRowItemB_Manager();
        },
        separatorBuilder: (context, index) => SpaceItem(),
        itemCount: 15,
      ),
    );
  }

}