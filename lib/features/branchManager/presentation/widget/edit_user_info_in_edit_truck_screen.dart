import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class EditUserInfoInEditTruckScreen extends StatefulWidget{
  @override
  State<EditUserInfoInEditTruckScreen> createState() => _EditUserInfoInEditTruckScreenState();
}

class _EditUserInfoInEditTruckScreenState extends State<EditUserInfoInEditTruckScreen> {

  String creator_name = 'Lilian Kabool';
  var editing_date = 'Enter Date';
  var editor_name = TextEditingController();
  bool showDate = false;
  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User Information',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          SizedBox(
            height: screenHeight / 110,
          ),
          Row(
            children: [
              Text(
                'Create',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 14.7,
              ),
              Expanded(
                child: Container(
                  height: 44.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${creator_name}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight / 75,
          ),
          Row(
            children: [
              Text(
                'Last Edit',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 39.7,
              ),
              Expanded(
                child: Container(
                  height: 44.h,
                  color: AppColors.mediumBlue,
                  child: TextFormField(
                    controller: editor_name,
                    cursorColor: AppColors.darkBlue,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight / 75,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Editing',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth / 16,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2100),
                    ).then((value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        selectedDate = value;
                        editing_date = DateFormat('yyyy-MM-dd').format(selectedDate);
                        showDate = true;
                        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
                      });
                    });
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: showDate
                          ? Text(
                        DateFormat('yyyy-MM-dd')
                            .format(selectedDate),
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      )
                          : Text(
                        'Enter Date',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}