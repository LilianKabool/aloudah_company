import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/view_branch_information_screen.dart';


class BranchItemForEmployee extends StatelessWidget{

  String branches_name = 'Damascus';

  BranchItemForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            branches_name,
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 18.sp,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const ViewBranchInformationScreen()));
            },
            icon: const Icon(
              Icons.directions,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
