
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/view_employees_powers_screen_for_admin.dart';

class ViewEmployeesPowersButtonForAdmin extends StatelessWidget{
  final int employeeId ;

  const ViewEmployeesPowersButtonForAdmin({super.key, required this.employeeId});
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
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewEmployeesPowersScreenForAdmin(employeeId:employeeId)));
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