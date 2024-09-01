
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/params/add_branch_manager_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/add_branch_manager_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import 'add_powers_admin.dart';

class EnterBManagerInformation extends StatefulWidget {
   late var   branchId = TextEditingController();
  EnterBManagerInformation({super.key,   required this.branchId});
  @override
  State<EnterBManagerInformation> createState() =>
      _EnterBManagerInformationState();

}

class _EnterBManagerInformationState extends State<EnterBManagerInformation> {


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



  var manager_name = TextEditingController();
  var address = TextEditingController();
  var manager_email = TextEditingController();
  var manager_id = TextEditingController();
  var manager_gender = TextEditingController();
  var manager_b_date = TextEditingController();
  var manager_b_place = TextEditingController();
  var manager_phone = TextEditingController();
  var manager_mobile = TextEditingController();
  var manager_address = TextEditingController();
  var desk = TextEditingController();
  var manager_mother_name = TextEditingController();
  var manager_rank = TextEditingController();
  var manager_salary = TextEditingController();
  var manager_emp_date = TextEditingController();
  var manager_branch = TextEditingController();
  var birth_date = ' ';
  var emp_date = ' ';
  bool showDate = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  var gender = ["Male", "Female", ""];
  var selectedGender = "";

  var selectedBranch ;



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
                    controller: manager_id,
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
                    controller: manager_name,
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
                    controller: manager_mother_name,
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
                    controller: manager_b_place,
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
                    controller: manager_phone,
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
                    controller: manager_mobile,
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
                  'email',
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
                    controller: manager_address,
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
                  'Rank',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 8.5,
                ),
                Expanded(
                  child: TextFormField(
                    controller: manager_rank,
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
                    controller: manager_salary,
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
            Row(
              children: [
                Text(
                  'branch',
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
                    controller: widget.branchId,
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
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.r),
                  bottomRight: Radius.circular(5.r),
                ),
                //color: AppColors.yellow,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const AddPowersAdmin()));
                },
                heroTag: 10,
                backgroundColor: AppColors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r),
                  ),
                ),
                elevation: 0.0,
                child: Text(
                  'Add Powers',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    //fontWeight: FontWeight.bold,
                    fontSize: 17.0.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
            const SpaceItem(),
            BlocConsumer<AddBranchManagerCubit, PostState<BaseEntity>>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37.r),
                        color: AppColors.darkBlue,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          context
                              .read<AddBranchManagerCubit>()
                              .emitAddBranchManager(
                            addBranchManagerParams: AddBranchManagerParams(
                              address: address.text,
                              desk: desk.text,
                              phone: manager_phone.text,
                              nationalId: manager_id.text,
                              managerName: manager_name.text,
                              branchId: widget.branchId.text,
                              email: manager_address.text,
                              phoneNumber: manager_mobile.text,
                              gender: selectedGender,
                              motherName: manager_mother_name.text,
                              dateOfBirth: '1990-02-12',
                              managerAddress: manager_address.text,
                              salary: manager_salary.text,
                              rank: manager_rank.text,
                            ),
                          );
                        },
                        backgroundColor: AppColors.darkBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(37.r),
                            topLeft: Radius.circular(37.r),
                          ),
                        ),
                        child: Text(
                          'Add',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0.sp,
                            color: AppColors.mediumBlue,
                          ),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                );
              },
              listener: (context, state) {
                state.whenOrNull(
                  success: (_) {
                    Fluttertoast.showToast(
                      msg: "manager added successfully!",
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
      ),
    );
  }
}
