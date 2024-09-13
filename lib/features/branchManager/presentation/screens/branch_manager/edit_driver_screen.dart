import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../widget/divider_item.dart';
import '../../widget/divider_space_item.dart';
import '../../widget/driver_information_text.dart';
import '../../widget/edit_screens_text_intro.dart';
import '../../widget/space_item.dart';

class EditDriverScreen extends StatefulWidget{

  @override
  State<EditDriverScreen> createState() => _EditDriverScreenState();
}

class _EditDriverScreenState extends State<EditDriverScreen> {

  String driver_name = "Lilian Kabool";
  String driver_id = "03100004564";
  String driver_phone = "0988011745";
  String driver_email = "lilia123@gmail.com";
  String driver_certificate = "A+";
  String editedID = '';
  String editedName = '';
  String editedPhone = '';
  String editedEmail = '';
  String editedCertificate = '';
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
    TextEditingController driver_id_controller = TextEditingController(text: driver_id);
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
            controller: driver_id_controller ,
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
                  driver_id = editedID;
                });
                driver_id_controller.text = driver_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editName() {
    TextEditingController driver_name_controller = TextEditingController(text: driver_name);
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
            controller: driver_name_controller,
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
                  driver_name = editedName;
                });
                driver_name_controller.text = driver_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPhone() {
    TextEditingController driver_phone_controller = TextEditingController(text: driver_phone);
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
            controller: driver_phone_controller,
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
                  driver_phone = editedPhone;
                });
                driver_phone_controller.text = driver_phone;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editEmail() {
    TextEditingController driver_email_controller = TextEditingController(text: driver_email);
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
            controller: driver_email_controller,
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
                  driver_email = editedEmail;
                });
                driver_email_controller.text = driver_email;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editCertificate() {
    TextEditingController driver_certificate_controller = TextEditingController(text: driver_certificate);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Certificate',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: driver_certificate_controller,
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
                  driver_certificate = editedCertificate;
                });
                driver_certificate_controller.text = driver_certificate;
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
          child: DriverInformationText(),
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
                  height: screenHeight/1.3,
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
                  height: screenHeight/1.3,
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
                              '${driver_id}',
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
                              '${driver_name}',
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
                              '${driver_phone}',
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
                        'Certificate',
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'Bauhaus',
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: (){
                          _editCertificate();
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          color: AppColors.lightBlue,
                          padding: EdgeInsets.only(left: 10.w),
                          child: Center(
                            child: Text(
                              '${driver_certificate}',
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
                              '${driver_email}',
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
}