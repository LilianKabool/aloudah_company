import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class EffectiveTripDetails2ForAdmin extends StatelessWidget{

  String general_total = "5,739,542";
  String discount = "-";
  String net_total = "5,739,542";
  String misc_paid = "-";
  String against_shipping = "-";
  String adapter = "-";
  String advance = "500,000";
  String collection = "5,210,000";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'General Total',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${general_total}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Against Shipping',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${against_shipping}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
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
                        height: 5.h,
                      ),
                      Text(
                        '${discount}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Adapter',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${adapter}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Net Total',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${net_total}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Advance',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${advance}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Misc. Paid',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${misc_paid}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      Text(
                        'Collection',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '${collection}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
        ],
      ),
    );
  }

}