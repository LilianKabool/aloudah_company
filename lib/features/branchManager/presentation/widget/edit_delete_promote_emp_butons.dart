import '../../presentation/screens/branch_manager/edit_employee_b_manager.dart';
import '../../presentation/widget/promote_employee_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class EditDeletePromoteEmpButtons extends StatefulWidget{

  @override
  State<EditDeletePromoteEmpButtons> createState() => _EditDeletePromoteEmpButtonsState();
}

class _EditDeletePromoteEmpButtonsState extends State<EditDeletePromoteEmpButtons> {

  _deleteEmployee (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this employee ?",
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

  void bottomSheetForPromoteEmployee(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return PromoteEmployeeWidget();
      },
      backgroundColor: AppColors.pureWhite,
    );
  }

  int rating = 0;

  void updateRating(int newRating) {
    setState(() {
      rating = newRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteEmployee(context);
              },
              child: Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 1,
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditEmployeeB_Manager()));
              },
              child: Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 2,
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                bottomSheetForPromoteEmployee(context);
              },
              child: Icon(
                Icons.trending_up,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= 5; i++)
                GestureDetector(
                  onTap: () => updateRating(i),
                  child: Icon(
                    Icons.star,
                    //size: 40,
                    color: i <= rating ? AppColors.yellow : AppColors.mediumBlue,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}