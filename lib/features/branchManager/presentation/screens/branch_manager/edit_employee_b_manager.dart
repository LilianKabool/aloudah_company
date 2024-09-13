
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widget/divider_item.dart';
import '../../widget/edit_screens_text_intro.dart';
import '../../widget/employee_information_text.dart';
import 'add_powers_b_manager.dart';

class EditEmployeeB_Manager extends StatefulWidget{


  @override
  State<EditEmployeeB_Manager> createState() => _EditEmployeeB_ManagerState();
}

class _EditEmployeeB_ManagerState extends State<EditEmployeeB_Manager> {

  String employee_name = "Lilian Kabool";
  String employee_id = "03100004564";
  String employee_phone = "0988011745";
  String employee_email = "lilia123@gmail.com";
  String editedID = '';
  String editedName = '';
  String editedPhone = '';
  String editedEmail = '';
  String res_date = '';
  var  employee_resignation_date = TextEditingController();
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
        res_date = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    });
  }

  void _editID() {
    TextEditingController employee_id_controller = TextEditingController(text: employee_id);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit ID',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_id_controller ,
            onChanged: (value) {
              editedID = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  employee_id = editedID;
                });
                employee_id_controller.text = employee_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editName() {
    TextEditingController employee_name_controller = TextEditingController(text: employee_name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Name',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_name_controller,
            onChanged: (value) {
              editedName = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  employee_name = editedName;
                });
                employee_name_controller.text = employee_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPhone() {
    TextEditingController employee_phone_controller = TextEditingController(text: employee_phone);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Phone',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_phone_controller,
            onChanged: (value) {
              editedPhone = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  employee_phone = editedPhone;
                });
                employee_phone_controller.text = employee_phone;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editEmail() {
    TextEditingController employee_email_controller = TextEditingController(text: employee_email);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Email',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_email_controller,
            onChanged: (value) {
              editedEmail = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  employee_email = editedEmail;
                });
                employee_email_controller.text = employee_email;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpaceItem(),
            EditScreensTextIntro(),
            DividerSpaceItem(),
            SpaceItem(),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenHeight/1.5,
                  width: screenWidth / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    border: Border.all(
                      color: AppColors.pureBlack,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight/1.5,
                  width: screenWidth / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      border: Border.all(
                        color: AppColors.pureBlack,
                      ),
                      color: AppColors.pureWhite
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        'ID',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          _editID();
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              '${employee_id}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SpaceItem(),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          _editName();
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              '${employee_name}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SpaceItem(),
                      Text(
                        'Phone',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          _editPhone();
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              '${employee_phone}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SpaceItem(),
                      Text(
                        'Email',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          _editEmail();
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              '${employee_email}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SpaceItem(),
                      Text(
                        'Resignation Date',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          datePicker(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              DateFormat('yyyy-MM-dd').format(selectedDate),
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      ),
                      SpaceItem(),
                    ],
                  ),
                ),
              ],
            ),
            // Expanded(
            //     child: EditEmployeeInformation(),
            // ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: double.infinity,
              height: 50.h,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                    color:  AppColors.mediumBlue,
                    fontFamily: 'Bauhaus',
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget SaveButton() => Container(
  //   width: double.infinity,
  //   child: FloatingActionButton(
  //     onPressed: (){},
  //     child: Text(
  //       'Save',
  //       style: TextStyle(
  //         fontFamily: 'bahnschrift',
  //         fontWeight: FontWeight.bold,
  //         fontSize: 17.0.sp,
  //         color: AppColors.mediumBlue,
  //       ),
  //     ),
  //     backgroundColor: AppColors.darkBlue,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(37.r),
  //         topLeft: Radius.circular(37.r),
  //       ),
  //     ),
  //   ),
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(37.r),
  //     color: AppColors.darkBlue,
  //   ),
  // );
}