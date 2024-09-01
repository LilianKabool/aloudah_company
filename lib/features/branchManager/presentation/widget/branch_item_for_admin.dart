
import 'package:aloudeh_company/features/admin/presentation/screens/edit_branch_screen.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/view_branch_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class BranchItemForAdmin extends StatelessWidget{

  String branches_name = 'Damascus';

  _deleteBranch (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this branch ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${branches_name}',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontSize: 18.sp,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewBranchForAdmin()));
             },
            icon: Icon(
              Icons.directions,
              color: AppColors.darkBlue,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>EditBranchScreen()));
            },
            icon: Icon(
              Icons.edit,
              color: AppColors.darkBlue,
            ),
          ),
          IconButton(
            onPressed: () {
              _deleteBranch(context);
            },
            icon: Icon(
              Icons.delete,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
