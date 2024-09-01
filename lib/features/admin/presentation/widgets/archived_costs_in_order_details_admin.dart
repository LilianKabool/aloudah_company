import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class ArchivedCostsInOrderDetailsAdmin extends StatelessWidget{

  double prepaid_cost = 2500;
  double collection_cost = 2500;
  double prepaid_against_shipping = 2500;
  double collection_against_shipping = 2500;
  double collection_adapter = 2500;
  double collection_discount = 2500;

  ArchivedCostsInOrderDetailsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Costs',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          const SpaceItem(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: AppColors.pureWhite,
              ),
              Text(
                'Prepaid',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Collection',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          //SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Costs',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$prepaid_cost',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$collection_cost',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Against',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Shipping',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$prepaid_against_shipping',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$collection_against_shipping',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Miscellane..',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    '\\ Adapter',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.pureWhite,
                ),
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$collection_adapter',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Discount',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.pureWhite,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Container(
                    height: 35.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$collection_adapter',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
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