import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors_constants.dart';
import 'divider_between_list_elements.dart';

class EditCustomerInfoForEmployee extends StatefulWidget{
  const EditCustomerInfoForEmployee({super.key});

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
    TextEditingController customerIdController = TextEditingController(text: customer_id);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit ID',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerIdController ,
            onChanged: (value) {
              editedID = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerIdController.text = customer_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editName() {
    TextEditingController customerNameController = TextEditingController(text: customer_name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Name',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerNameController,
            onChanged: (value) {
              editedName = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerNameController.text = customer_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPhone() {
    TextEditingController customerPhoneController = TextEditingController(text: customer_phone);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Phone',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerPhoneController,
            onChanged: (value) {
              editedPhone = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerPhoneController.text = customer_phone;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editMobile() {
    TextEditingController customerMobileController = TextEditingController(text: customer_mobile);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Mobile',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerMobileController,
            onChanged: (value) {
              editedMobile = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerMobileController.text = customer_mobile;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddress() {
    TextEditingController customerAddressController = TextEditingController(text: customer_address);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Address',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerAddressController,
            onChanged: (value) {
              editedAddress = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerAddressController.text = customer_address;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddressDetails() {
    TextEditingController customerAddressDetailsController = TextEditingController(text: customer_address_details);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Address Details',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customerAddressDetailsController ,
            onChanged: (value) {
              editedAddressDetails = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
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
                customerAddressDetailsController .text = customer_address_details;
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
                      customer_id,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
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
                      customer_name,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
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
                      customer_phone,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
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
                      customer_mobile,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
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
                      customer_address,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
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
                      customer_address_details,
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
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
        const DividerBetweenListElements(),
      ],
    );
  }
}