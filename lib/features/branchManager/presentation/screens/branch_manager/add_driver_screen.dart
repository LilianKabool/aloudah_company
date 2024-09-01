import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/features/branchManager/controllers/add_driver_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_driver_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../../../core/error/network_exceptions.dart';
import '../../../../../core/global_states/post_state.dart';
import '../../../presentation/widget/enter_driver_information.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/add_driver_text.dart';
import '../../widget/divider_item.dart';

class AddDriverScreen extends StatefulWidget {
  var driver_name = TextEditingController();
  var email = TextEditingController();

  var driver_id = TextEditingController();
  var national_id = TextEditingController();

  var driver_gender = TextEditingController();

  var driver_b_date = TextEditingController();

  var driver_b_place = TextEditingController();

  var driver_phone = TextEditingController();

  var driver_mobile = TextEditingController();

  var driver_address = TextEditingController();

  var driver_mother_name = TextEditingController();

  var driver_certificate_type = TextEditingController();

  var driver_salary = TextEditingController();

  var driver_emp_date = TextEditingController();

  var birth_date = ' ';

  var emp_date = ' ';

  bool showDate = false;

  DateTime selectedDate1 = DateTime.now();

  DateTime selectedDate2 = DateTime.now();

  var gender = ["Male", "Female", ""];

  var selectedGender = "";

  var departments = ["Financial", "Warehouses", ""];

  var selectedDepartment = "";

  @override
  State<AddDriverScreen> createState() => _AddDriverScreenState();
}

class _AddDriverScreenState extends State<AddDriverScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddDriverText(),
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
      body: Column(
        children: [
          SpaceItem(),
          Expanded(
            child: Padding(
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
                          controller: widget.national_id,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 10.4,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_name,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 14.4,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_mother_name,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 14.4,
                      ),
                      Expanded(
                        child: Container(
                          color: AppColors.mediumBlue,
                          height: 40.h,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              borderRadius: BorderRadius.circular(10.0),
                              dropdownColor: AppColors.yellow,
                              iconEnabledColor: AppColors.darkBlue,
                              items: widget.gender.map(
                                    (String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                },
                              ).toList(),
                              onChanged: (thegender) {
                                setState(() {
                                  widget.selectedGender =
                                  (thegender.toString());
                                });
                              },
                              value: widget.selectedGender,
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
                        width: screenWidth / 13.5,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: widget.selectedDate1,
                              firstDate: DateTime(2018),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              if (value == null) {
                                return;
                              }
                              setState(() {
                                widget.selectedDate1 = value;
                                widget.birth_date =
                                    DateFormat('yyyy-MM-dd').format(
                                        widget.selectedDate1);
                                widget.showDate = true;
                                // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
                              });
                            });
                            ;
                          },
                          child: Container(
                            height: 40.h,
                            color: AppColors.mediumBlue,
                            child: Center(
                              child: widget.showDate
                                  ? Text(
                                DateFormat('yyyy-MM-dd').format(
                                    widget.selectedDate1),
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              )
                                  : Text(
                                ' ',
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
                        width: screenWidth / 17.8,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_b_place,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 11,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_phone,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 11.6,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_mobile,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 20,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_address,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SpaceItem(),
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
                        width: screenWidth / 80,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_certificate_type,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 11,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: widget.driver_salary,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ), SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'email',
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
                          controller: widget.email,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        width: screenWidth / 50,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: widget.selectedDate2,
                              firstDate: DateTime(2018),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              if (value == null) {
                                return;
                              }
                              setState(() {
                                widget.selectedDate2 = value;
                                widget.emp_date =
                                    DateFormat('yyyy-MM-dd').format(
                                        widget.selectedDate2);
                                widget.showDate = true;
                                // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
                              });
                            });
                            ;
                          },
                          child: Container(
                            height: 40.h,
                            color: AppColors.mediumBlue,
                            child: Center(
                              child: widget.showDate
                                  ? Text(
                                DateFormat('yyyy-MM-dd').format(
                                    widget.selectedDate2),
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              )
                                  : Text(
                                ' ',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SpaceItem(),
                ],
              ),
            ),
          ),
          BlocConsumer<AddDriverCubit, PostState<BaseEntity>>(
            builder: (context, state) {
              return state.maybeWhen(
                idle: () {
                  return Container(
                    width: double.infinity,
                    child: FloatingActionButton(
                      onPressed: () {
                        context.read<AddDriverCubit>().emitAddDriver(
                            addDriverParams: AddDriverParams(
                              name: widget.driver_name.text,
                              branchId: widget.driver_id.text,
                              phoneNumber: widget.driver_phone.text,
                              nationalId: widget.national_id.text,
                              motherName:widget.driver_mother_name.text ,
                              gender: widget.selectedGender,
                              email: widget.email.text,
                              birthPlace: widget.driver_b_place.text,
                              birthDate: widget.birth_date,
                              mobile: widget.driver_mobile.text,
                              address:widget.driver_address.text,
                              salary: widget.driver_salary.text,
                              certificate: widget.driver_certificate_type.text,

                            ));
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.mediumBlue,
                        ),
                      ),
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(37.r),
                          topLeft: Radius.circular(37.r),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColors.darkBlue,
                    ),
                  );
                },
                orElse: () {
                  return Container(
                    width: double.infinity,
                    child: FloatingActionButton(
                      onPressed: () {
                        context.read<AddDriverCubit>().emitAddDriver(
                            addDriverParams: AddDriverParams(
                            name: widget.driver_name.text,
                            branchId: widget.driver_id.text,
                            phoneNumber: widget.driver_phone.text,
                            nationalId: widget.national_id.text,
                            motherName:widget.driver_mother_name.text ,
                            gender: widget.selectedGender,
                            email: widget.email.text,
                            birthPlace: widget.driver_b_place.text,
                            birthDate: widget.birth_date,
                            mobile: widget.driver_mobile.text,
                            address:widget.driver_address.text,
                            salary: widget.driver_salary.text,
                            certificate: widget.driver_certificate_type.text,

                        ));
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.mediumBlue,
                        ),
                      ),
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(37.r),
                          topLeft: Radius.circular(37.r),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColors.darkBlue,
                    ),
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
            listener: (context, state) {
              state.whenOrNull(
                success: (_) {
                  Fluttertoast.showToast(
                    msg: "add it  successfully!",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
                error: (exception) {
                  Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(exception),
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
              );
            },

          ),
        ],
      ),
    );
  }


}