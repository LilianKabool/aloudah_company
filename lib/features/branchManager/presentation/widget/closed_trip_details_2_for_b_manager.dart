import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../employee/presentation/screens/edit_trip_screen.dart';


class ClosedTripDetails2ForB_Manager extends StatelessWidget{
final String trip_number ;
ClosedTripDetails2ForB_Manager({required this.trip_number});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"general_total"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"against_shipping"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"discount"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"adapter"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"net_total"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"advance"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"misc_paid"}',
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
          SpaceItem(),
          Container(
            width: double.infinity,
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
                    '${"collection"}',
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
          SpaceItem(),
        ],
      ),
    );
  }

}