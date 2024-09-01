import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class ViewManifestPowers extends StatelessWidget{

  String power= "Add";

  Widget ManifestPowerItem() => Row(
    children: [
      Icon(
        Icons.check_box,
        color: AppColors.darkBlue,
      ),
      SizedBox(
        width: 5.w,
      ),
      Expanded(
        child: Text(
          '${power}',
          style: TextStyle(
            fontSize: 16.h,
            fontFamily: 'Bahnschrift',
            color: AppColors.darkBlue,
          ),
        ),
      ),
    ],
  );

  Widget BuildManifestPowers() => ListView.separated(
    itemBuilder: (context, index) {
      return ManifestPowerItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Manifest',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 180.h,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightBlue,
            ),
            child: BuildManifestPowers(),
          ),
        ],
      ),
    );
  }

}