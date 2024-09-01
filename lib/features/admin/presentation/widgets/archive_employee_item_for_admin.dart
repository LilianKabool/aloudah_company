import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/view_archived_employee_for_admin.dart';


class  ArchivedEmployeeItemForAdmin extends StatelessWidget{
// final int employeeId ;
// ArchivedEmployeeItemForAdmin({required this.employeeId});
  String archiveEmployeeName = 'Seba Taleaa';

  ArchivedEmployeeItemForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              archiveEmployeeName,
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ViewArchivedEmployeeForAdmin(),),);
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