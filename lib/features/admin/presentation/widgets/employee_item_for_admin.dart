import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';



class  EmployeeItemForAdmin extends StatelessWidget{

  String employeeName = 'Seba Taleaa';

  EmployeeItemForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              employeeName,
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
          ),
          Container(
            height: 35.h,
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: IconButton(
              onPressed: (){
             //   Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewEmployeeForAdmin()));
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