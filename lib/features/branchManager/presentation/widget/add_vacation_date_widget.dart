
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';


class AddVacationDateWidget extends StatefulWidget{
  @override
  State<AddVacationDateWidget> createState() => _AddVacationDateWidgetState();
}

class _AddVacationDateWidgetState extends State<AddVacationDateWidget> {

  var date_to = 'Date To';
  var date_from = 'Date From';
  bool showDate1 = false;
  bool showDate2 = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  void datePicker1(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate1 = value;
        date_from = DateFormat('yyyy-MM-dd').format(selectedDate1);
        showDate1 = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker2(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate2 = value;
        date_to = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate2 = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                datePicker1(context);
              },
              child: Container(
                height: 40.h,
                color: AppColors.mediumBlue,
                child: Center(
                  child: showDate1
                      ? Text(
                    DateFormat('yyyy-MM-dd').format(selectedDate1),
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  )
                      : Text(
                    '${date_from}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                datePicker2(context);
              },
              child: Container(
                height: 40.h,
                color: AppColors.mediumBlue,
                child: Center(
                  child: showDate2
                      ? Text(
                    DateFormat('yyyy-MM-dd').format(selectedDate2),
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  )
                      : Text(
                    '${date_to}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}