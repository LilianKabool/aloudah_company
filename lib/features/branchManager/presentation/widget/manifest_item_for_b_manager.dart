
import 'package:aloudeh_company/core/constants/colors_constants.dart';

import '../../presentation/screens/branch_manager/view_trip_invoice_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ManifestItemForB_Manager extends StatefulWidget{
  @override
  State<ManifestItemForB_Manager> createState() => _ManifestItemForB_ManagerState();
}

class _ManifestItemForB_ManagerState extends State<ManifestItemForB_Manager> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Column(
        children: [
          Expanded(
            child: Text(
              '${"count"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"receipt"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"source"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"type"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"quantity"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"sender"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"consignee"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"against_shipping"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"miscellaneous"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"pre_paid"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"discount"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"collection"}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${"adapter"}',
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripInvoiceForB_Manager()));
              },
              icon: Icon(
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