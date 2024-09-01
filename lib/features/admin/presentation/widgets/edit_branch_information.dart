import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';


class EditBranchInformation extends StatefulWidget{
  const EditBranchInformation({super.key});


  @override
  State<EditBranchInformation> createState() => _EditBranchInformationState();
}

class _EditBranchInformationState extends State<EditBranchInformation> {
  var branch_desk = 'Aleppo';
  var branch_mobile = '0988022813';
  var branch_address = 'Aleppo, Street 16';
  var branch_closing_date = '19/09/2023';
  String editedDesk = '';
  String editedMobile = '';
  String editedAddress = '';
  var closing_date = 'Enter Date';
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
        closing_date = DateFormat('yyyy-MM-dd').format(selectedDate);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void _editDesk() {
    TextEditingController branchDeskController = TextEditingController(text: branch_desk);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Desk',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: branchDeskController,
            onChanged: (value) {
              editedDesk = value;
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
                  branch_desk = editedDesk;
                });
                branchDeskController.text = branch_desk;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editMobile() {
    TextEditingController branchMobileController = TextEditingController(text: branch_mobile);
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
            controller: branchMobileController,
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
                  branch_mobile = editedMobile;
                });
                branchMobileController.text = branch_mobile;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddress() {
    TextEditingController branchAddressController = TextEditingController(text: branch_address);
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
            controller: branchAddressController,
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
                  branch_address = editedAddress;
                });
                branchAddressController.text = branch_address;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Desk',
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
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      branch_desk,
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: AppColors.mediumBlue,
                height: 40.h,
                child: IconButton(
                  onPressed: () {
                    _editDesk();
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.darkBlue,
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
                width: screenWidth/19,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      branch_mobile,
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: AppColors.mediumBlue,
                height: 40.h,
                child: IconButton(
                  onPressed: () {
                    _editMobile();
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.darkBlue,
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
                width: screenWidth/60,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      branch_address,
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: AppColors.mediumBlue,
                height: 40.h,
                child: IconButton(
                  onPressed: () {
                    _editAddress();
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.darkBlue,
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
                    'Closing',
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
                width: screenWidth / 28,
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
                          '$closing_date ',
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