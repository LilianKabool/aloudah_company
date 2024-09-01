
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class ViewReportsPowers extends StatelessWidget{

  String power= "Add";

  ViewReportsPowers({super.key});

  Widget ReportPowerItem() => Row(
    children: [
      const Icon(
        Icons.check_box,
        color: AppColors.darkBlue,
      ),
      SizedBox(
        width: 5.w,
      ),
      Expanded(
        child: Text(
          power,
          style: TextStyle(
            fontSize: 16.h,
            fontFamily: 'Bahnschrift',
            color: AppColors.darkBlue,
          ),
        ),
      ),
    ],
  );

  Widget BuildReportsPowers() => ListView.separated(
    itemBuilder: (context, index) {
      return ReportPowerItem();
    },
    separatorBuilder: (context, index) => const SpaceItem(),
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
            'Reports',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 180.h,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightBlue,
            ),
            child: BuildReportsPowers(),
          ),
        ],
      ),
    );
  }

}