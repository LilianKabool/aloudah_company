
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/view_trip_invoice_for_employee.dart';


class ManifestItemForEmployee extends StatelessWidget{

  int count = 1;
  int receipt = 5478;
  String source = 'Damascus';
  String type = 'package';
  int quantity = 20;
  String sender = 'Seba Taleaa';
  String consignee = 'Lilian Kabool';
  String against_shipping = "-";
  String adapter = "-";
  String miscellaneous = "-";
  String advance = "500,000";
  double collection = 250000000;
  String pre_paid = "-";
  String discount = '_';

  ManifestItemForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Column(
        children: [
          Expanded(
            child: Text(
              '$count',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '$receipt',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              source,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              type,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '$quantity',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              sender,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              consignee,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              against_shipping,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              miscellaneous,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              pre_paid,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              discount,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '$collection',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              adapter,
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ViewTripInvoiceForEmployee()));
              },
              icon: const Icon(
                Icons.remove_red_eye,
                color: AppColors.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

}