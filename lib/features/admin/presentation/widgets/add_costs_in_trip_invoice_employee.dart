import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class AddCostsInTripInvoiceEmployee extends StatelessWidget{

  var prepaid_cost = TextEditingController();
  var collection_cost = TextEditingController();
  var prepaid_against_shipping = TextEditingController();
  var collection_against_shipping = TextEditingController();
  var collection_adapter = TextEditingController();
  var collection_discount = TextEditingController();

  AddCostsInTripInvoiceEmployee({super.key});

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
          //SpaceItem(),
          SizedBox(
            height: 5.h,
          ),
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
                child: TextFormField(
                  controller: prepaid_cost,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: TextFormField(
                  controller: collection_cost,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
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
                child: TextFormField(
                  controller: prepaid_against_shipping,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: TextFormField(
                  controller: collection_against_shipping,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
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
                child: TextFormField(
                  controller: collection_adapter,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
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
                child: TextFormField(
                  controller: collection_discount,
                  cursorColor: AppColors.darkBlue,
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
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