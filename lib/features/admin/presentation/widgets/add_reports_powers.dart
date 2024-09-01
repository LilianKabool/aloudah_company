import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class AddReportsPowers extends StatefulWidget{
  const AddReportsPowers({super.key});

  @override
  State<AddReportsPowers> createState() => _AddReportsPowersState();
}

class _AddReportsPowersState extends State<AddReportsPowers> {

  bool _addChecked = false;
  bool _editChecked = false;
  bool _deleteChecked = false;
  bool _viewChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reports',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 200.h,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightBlue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.darkBlue,
                        value: _addChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _addChecked = value!;
                          });
                        }),
                    Expanded(
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'Bahnschrift',
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.darkBlue,
                        value: _editChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _editChecked= value!;
                          });
                        }),
                    Expanded(
                      child: Text(
                        'ُEdit',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'Bahnschrift',
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.darkBlue,
                        value: _viewChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _viewChecked = value!;
                          });
                        }),
                    Expanded(
                      child: Text(
                        'View',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'Bahnschrift',
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.darkBlue,
                        value: _deleteChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _deleteChecked = value!;
                          });
                        }),
                    Expanded(
                      child: Text(
                        'Delete',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'Bahnschrift',
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}