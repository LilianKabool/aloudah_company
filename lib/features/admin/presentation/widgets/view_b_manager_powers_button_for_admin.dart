import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/view_powers_admin.dart';

class ViewB_ManagerPowersButtonForAdmin extends StatelessWidget{
  const ViewB_ManagerPowersButtonForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.r),
            bottomRight: Radius.circular(5.r),
          ),
          //color: AppColors.yellow,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const ViewPowersAdmin()));
          },
          backgroundColor: AppColors.darkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.r),
              bottomRight: Radius.circular(5.r),
            ),
          ),
          elevation: 0.0,
          child: Text(
            'Powers',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              //fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
              color: AppColors.mediumBlue,
            ),
          ),
        ),
      ),
    );
  }

}