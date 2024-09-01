import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../admin/presentation/widgets/space_item.dart';


class ViewBranchWarehouseInformation extends StatelessWidget{

  String branch_name = "Damascus";
  String warehouse_name = "Damascus";
  String warehouse_location = "Damascus";
  String notes = "Damascus";
  String area = "1000 km";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 70.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.lightBlue,
          ),
          child: ListView(
            children: [
              Text(
                'Branch Name',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.darkBlue,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${branch_name}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SpaceItem(),
              Text(
                'Warehouse Name',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.darkBlue,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${warehouse_name}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SpaceItem(),
              Text(
                'Location',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.darkBlue,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${warehouse_location}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SpaceItem(),
              Text(
                'Area',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.darkBlue,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${area}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              SpaceItem(),
              Text(
                'Notes',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.darkBlue,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${notes}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}