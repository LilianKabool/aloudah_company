import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';


class EditBranchUserInformation extends StatefulWidget{
  const EditBranchUserInformation({super.key});

  @override
  State<EditBranchUserInformation> createState() => _EditBranchUserInformationState();
}

class _EditBranchUserInformationState extends State<EditBranchUserInformation> {

  var editing_date = 'Enter Date';
  String creator_name = 'Lilian Kabool';
  var editor_name = TextEditingController();
  bool showDate = false;
  DateTime selectedDate = DateTime.now();

  void datePicker(BuildContext context) {
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
  }

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
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: screenHeight / 110,
          ),
          Row(
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 14.3,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      creator_name,
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
          const SpaceItem(),
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
                width: screenWidth / 80,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: TextFormField(
                    controller: editor_name,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
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
          const SpaceItem(),
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
                width: screenWidth / 19.5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    datePicker(context);
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