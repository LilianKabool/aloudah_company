import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';

import 'add_powers_button.dart';

class EditEmployeeInformation extends StatefulWidget{

  @override
  State<EditEmployeeInformation> createState() => _EditEmployeeInformationState();
}

class _EditEmployeeInformationState extends State<EditEmployeeInformation> {

  String employee_name = "Lilian Kabool";
  String employee_id = "03100004564";
  String employee_gender = "Female";
  String employee_b_date = "14/01/2002";
  String employee_b_place = "Damascuse";
  String employee_phone = "0116798456";
  String employee_mobile = "+963 988011745";
  String employee_address = "Damascus";
  int employee_vacations = 3;
  String employee_mother_name = "Seba Taleaa";
  String employee_rank = "Employee";
  double employee_rate = 5;
  String employee_salary = "500000";

  String employee_emp_date = "20/8/2024";
  String employee_resignation_date = "-";
  String department = "Financial";
  String editedID = '';
  String editedName = '';
  String editedPhone = '';
  String editedMobile = '';
  String editedAddress = '';
  String editedMotherName = '';
  String editedBirthDate = '';
  String editedBirthPlace = '';
  String editedRank = '';
  String editedSalary = '';
  bool showDate = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  DateTime selectedDate3 = DateTime.now();

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
        employee_b_date = DateFormat('yyyy-MM-dd').format(selectedDate1);
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
        employee_emp_date = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker3(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate3,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate3 = value;
        employee_resignation_date = DateFormat('yyyy-MM-dd').format(selectedDate3);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
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

  void _editMotherName() {
    TextEditingController employee_mother_name_controller = TextEditingController(text: employee_mother_name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Mother Name',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_mother_name_controller ,
            onChanged: (value) {
              editedMotherName = value;
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
                  employee_mother_name = editedMotherName;
                });
                employee_mother_name_controller.text = employee_mother_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editBirthPlace() {
    TextEditingController employee_b_place_controller = TextEditingController(text: employee_b_place);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Birth Place',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_b_place_controller ,
            onChanged: (value) {
              editedBirthPlace = value;
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
                  employee_b_place = editedBirthPlace;
                });
                employee_b_place_controller.text = employee_b_place;
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

  void _editMobile() {
    TextEditingController employee_mobile_controller = TextEditingController(text: employee_mobile);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Mobile',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_mobile_controller,
            onChanged: (value) {
              editedMobile = value;
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
                  employee_mobile = editedMobile;
                });
                employee_mobile_controller.text = employee_mobile;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddress() {
    TextEditingController employee_address_controller = TextEditingController(text: employee_address);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Address',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_address_controller,
            onChanged: (value) {
              editedAddress = value;
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
                  employee_address = editedAddress;
                });
                employee_address_controller.text = employee_address;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editRank() {
    TextEditingController employee_rank_controller = TextEditingController(text: employee_rank);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Rank',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_rank_controller,
            onChanged: (value) {
              editedRank = value;
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
                  employee_rank = editedRank;
                });
                employee_rank_controller.text = employee_rank;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editSalary() {
    TextEditingController employee_salary_controller = TextEditingController(text: employee_salary);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Salary',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: employee_salary_controller,
            onChanged: (value) {
              editedSalary = value;
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
                  employee_salary = editedSalary;
                });
                employee_salary_controller.text = employee_salary;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String selectedGender = 'Male'; // Initialize selectedGender with a default value

  void _editGender() {
    List<String> genderOptions = ['Male', 'Female', 'Other']; // Example gender options

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Gender'),
          content: DropdownButton<String>(
            value: selectedGender,
            items: genderOptions.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedGender = (newValue.toString());
              });
            },
          ),
          actions: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  employee_gender = selectedGender;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
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
                width: screenWidth/5.8,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editID();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_id}',
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
          SpaceItem(),
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
                width: screenWidth/10.4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editName();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_name}',
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
          SpaceItem(),
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
                width: screenWidth/14.4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editMotherName();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_mother_name}',
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
          SpaceItem(),
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
                width: screenWidth/14.4,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editGender();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_gender}',
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
          SpaceItem(),
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
                width: screenWidth/13.5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    datePicker1(context);
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: showDate
                          ? Text(
                        DateFormat('yyyy-MM-dd')
                            .format(selectedDate1),
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      )
                          : Text(
                        '${employee_b_date}',
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
          SpaceItem(),
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
                width: screenWidth/17.8,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editBirthPlace();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_b_place}',
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
          SpaceItem(),
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
                width: screenWidth/11,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editPhone();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_phone}',
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
          SpaceItem(),
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
                width: screenWidth/11.6,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editMobile();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_mobile}',
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
          SpaceItem(),
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
                width: screenWidth/20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editAddress();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_address}',
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
          SpaceItem(),
          Row(
            children: [
              Text(
                'Rank',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/8.5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editRank();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_rank}',
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
          SpaceItem(),
          Row(
            children: [
              Text(
                'Rate',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/7.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${employee_rate}',
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
          SpaceItem(),
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
                width: screenWidth/11,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editSalary();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_salary}',
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
          SpaceItem(),
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
                width: screenWidth/50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    datePicker2(context);
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: showDate
                          ? Text(
                        DateFormat('yyyy-MM-dd')
                            .format(selectedDate2),
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      )
                          : Text(
                        '${employee_emp_date}',
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
          SpaceItem(),
          Row(
            children: [
              Text(
                'Resi_Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    datePicker3(context);
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: showDate
                          ? Text(
                        DateFormat('yyyy-MM-dd')
                            .format(selectedDate3),
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      )
                          : Text(
                        '${employee_resignation_date}',
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
          SpaceItem(),
          AddPowersButton(),
          SpaceItem(),
        ],
      ),
    );
  }
}