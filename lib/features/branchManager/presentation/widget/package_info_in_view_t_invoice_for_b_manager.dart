import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class PackageInfoInViewT_InvoiceForB_Manager extends StatelessWidget{

  double num_of_packages = 20;
  String package_type = 'Package';
  String weight = '200 Kg';
  String size = 'medium';
  String content = 'Toys';
  String marks = 'Katakate';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Package Information',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Num Of Packages',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 20,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.darkBlue,
                  child: Center(
                    child: Text(
                      '${num_of_packages}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureWhite,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Package Type',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.yellow,
                  child: Center(
                    child: Text(
                      '${package_type}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Content',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 4.2,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.darkBlue,
                  child: Center(
                    child: Text(
                      '${content}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureWhite,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Weight',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.85,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.yellow,
                  child: Center(
                    child: Text(
                      '${weight}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Marks',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.7,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.darkBlue,
                  child: Center(
                    child: Text(
                      '${marks}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureWhite,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Size',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.23,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.yellow,
                  child: Center(
                    child: Text(
                      '${size}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}