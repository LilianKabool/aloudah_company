
import '../../presentation/screens/branch_manager/prices_list_screen_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class PricesListButtonForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 40.h,
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>PricesListScreenForB_Manager()));
          },
          child: Text(
            'Prices List',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              //fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
              color: AppColors.darkBlue,
            ),
          ),
          backgroundColor: AppColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          elevation: 0.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          //color: AppColors.yellow,
        ),
      ),
    );
  }
}