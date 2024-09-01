import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';

class EditCustomerInfoForEmployee extends StatefulWidget{
  @override
  State<EditCustomerInfoForEmployee> createState() => _EditCustomerInfoForEmployeeState();
}

class _EditCustomerInfoForEmployeeState extends State<EditCustomerInfoForEmployee> {

  String customer_name = 'Seba Taleaa';
  String customer_id = '0310665335';
  String customer_phone = '67315963';
  String customer_mobile = '0988022813';
  String customer_address = 'Damasccus';
  String customer_address_details = 'Damascus, Sahnaya';
  String editedID = '';
  String editedName = '';
  String editedPhone = '';
  String editedMobile = '';
  String editedAddress = '';
  String editedAddressDetails = '';

  void _editID() {
    TextEditingController customer_id_controller = TextEditingController(text: customer_id);
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
            controller: customer_id_controller ,
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
                  customer_id = editedName;
                });
                customer_id_controller.text = customer_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editName() {
    TextEditingController customer_name_controller = TextEditingController(text: customer_name);
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
            controller: customer_name_controller,
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
                  customer_name = editedName;
                });
                customer_name_controller.text = customer_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPhone() {
    TextEditingController customer_phone_controller = TextEditingController(text: customer_phone);
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
            controller: customer_phone_controller,
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
                  customer_phone = editedPhone;
                });
                customer_phone_controller.text = customer_phone;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editMobile() {
    TextEditingController customer_mobile_controller = TextEditingController(text: customer_mobile);
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
            controller: customer_mobile_controller,
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
                  customer_mobile = editedMobile;
                });
                customer_mobile_controller.text = customer_mobile;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddress() {
    TextEditingController customer_address_controller = TextEditingController(text: customer_address);
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
            controller: customer_address_controller,
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
                  customer_address = editedAddress;
                });
                customer_address_controller.text = customer_address;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddressDetails() {
    TextEditingController customer_address_details_controller = TextEditingController(text: customer_address_details);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Address Details',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_address_details_controller ,
            onChanged: (value) {
              editedAddressDetails = value;
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
                  customer_address_details = editedAddressDetails;
                });
                customer_address_details_controller .text = customer_address_details;
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
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
                width: screenWidth / 7.2,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_id}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editID();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
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
                width: screenWidth / 15,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_name}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editName();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
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
                width: screenWidth / 17.5,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_phone}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editPhone();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
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
                width: screenWidth / 18.5,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_mobile}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editMobile();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
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
                width: screenWidth / 50,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_address}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editAddress();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth / 45,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_address_details}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _editAddressDetails();
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        DividerBetweenListElements(),
      ],
    );
  }
}