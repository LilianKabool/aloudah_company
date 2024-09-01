import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/screens/branch_manager/add_employee_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/build_employees_list_b_manager.dart';
import '../../widget/divider_item.dart';
import '../../widget/employee_search_button.dart';
import '../../widget/space_item.dart';

class EmployeesListTabB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        SearchEmployeeButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildEmployeesListB_Manager(),
        ),
        Container(
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AddEmployeeScreen()));
            },
            child: Text(
              'Add Employee',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.0.sp,
                color: AppColors.mediumBlue,
              ),
            ),
            backgroundColor: AppColors.darkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(37.r),
                topLeft: Radius.circular(37.r),
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(37.r),
              topLeft: Radius.circular(37.r),
            ),
            color: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}