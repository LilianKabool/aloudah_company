
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/prices_list_screen.dart';

class PricesListButtonForAdmin extends StatelessWidget{
  const PricesListButtonForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          //color: AppColors.yellow,
        ),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const PricesListScreen()));
          },
          backgroundColor: AppColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          elevation: 0.0,
          child: Text(
            'Prices List',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              //fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
              color: AppColors.darkBlue,
            ),
          ),
        ),
      ),
    );
  }
}