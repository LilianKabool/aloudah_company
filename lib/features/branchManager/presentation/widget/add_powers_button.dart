import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../admin/presentation/widgets/add_powers_b_manager.dart';


class AddPowersButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.h,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AddPowersB_Manager()));
        },
        heroTag: 4,
        child: Text(
          'Add Powers',
          style: TextStyle(
            fontFamily: 'bahnschrift',
            //fontWeight: FontWeight.bold,
            fontSize: 17.0.sp,
            color: AppColors.darkBlue,
          ),
        ),
        backgroundColor: AppColors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.r),
            bottomRight: Radius.circular(5.r),
          ),
        ),
        elevation: 0.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5.r),
          bottomRight: Radius.circular(5.r),
        ),
        //color: AppColors.yellow,
      ),
    );
  }

}