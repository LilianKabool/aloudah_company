
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';

class EnterDriverInformation extends StatefulWidget {
  const EnterDriverInformation({super.key});

  @override
  State<EnterDriverInformation> createState() => _EnterDriverInformationState();
}

class _EnterDriverInformationState extends State<EnterDriverInformation> {
  var  driver_name = TextEditingController();
  var  driver_id = TextEditingController();
  var  driver_gender = TextEditingController();
  var  driver_b_date = TextEditingController();
  var  driver_b_place = TextEditingController();
  var  driver_phone = TextEditingController();
  var  driver_mobile = TextEditingController();
  var  driver_address = TextEditingController();
  var  driver_mother_name = TextEditingController();
  var  driver_certificate_type = TextEditingController();
  var  driver_salary = TextEditingController();
  var  driver_emp_date = TextEditingController();
  var birth_date = ' ';
  var emp_date = ' ';
  bool showDate = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  var gender = ["Male", "Female", ""];
  var selectedGender = "";
  var departments = ["Financial", "Warehouses",""];
  var selectedDepartment= "";

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
        birth_date = DateFormat('yyyy-MM-dd').format(selectedDate1);
        showDate = true;
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
        emp_date = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'ID',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 5.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_id,
                    keyboardType: TextInputType.number,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
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
                  width: screenWidth / 10.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_name,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
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
                      'Mother',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth / 14.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_mother_name,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 14.4,
                ),
                Expanded(
                  child: Container(
                    color: AppColors.mediumBlue,
                    height: 40.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        dropdownColor: AppColors.yellow,
                        iconEnabledColor: AppColors.darkBlue,
                        items: gender.map(
                              (String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          },
                        ).toList(),
                        onChanged: (thegender) {
                          setState(() {
                            selectedGender = (thegender.toString());
                          });
                        },
                        value: selectedGender,
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
                  'B_Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 13.5,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      datePicker1(context);
                    },
                    child: Container(
                      height: 40.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: showDate
                            ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate1),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                            : const Text(
                          ' ',
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
                  'B_Place',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 17.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_b_place,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Phone',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 11,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_phone,
                    keyboardType: TextInputType.phone,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Mobile',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 11.6,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_mobile,
                    keyboardType: TextInputType.phone,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_address,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Driving',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Certificate',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth/80,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_certificate_type,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Salary',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 11,
                ),
                Expanded(
                  child: TextFormField(
                    controller:  driver_salary,
                    keyboardType: TextInputType.phone,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Emp_Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 50,
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
                        child: showDate
                            ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate2),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                            : const Text(
                          ' ',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
          ],
        ),
      ),
    );
  }
}
