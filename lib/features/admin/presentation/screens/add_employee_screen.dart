import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/add_powers_button.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_employee_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../branchManager/controllers/add_employee_cubit.dart';
import '../widgets/add_employee_text.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';


class AddEmployeeScreen extends StatefulWidget{
  final String branchId;
  const AddEmployeeScreen({super.key, required this.branchId});
  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  var employee_name = TextEditingController();

  var employee_id = TextEditingController();

  var employee_mother_name = TextEditingController();

  var employee_gender = TextEditingController();
  var employee_email = TextEditingController();

  var employee_b_date = TextEditingController();

  var employee_b_place = TextEditingController();

  var employee_phone = TextEditingController();

  var employee_mobile = TextEditingController();

  var employee_address = TextEditingController();

  var emp_date = ' ';

  var employee_rank = TextEditingController();

  var employee_salary = TextEditingController();

  var birth_date = ' ';

  var selectedDepartment = "";

  var employee_emp_date = TextEditingController();

  bool showDate = false;

  DateTime selectedDate1 = DateTime.now();

  DateTime selectedDate2 = DateTime.now();

  var gender = ["Male", "Female", ""];

  var selectedGender = "";

  var departments = ["Financial", "Warehouses", ""];

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
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddEmployeeText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          const SpaceItem(),
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
                          controller: employee_id,
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
                          controller: employee_name,
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
                          controller: employee_mother_name,
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
                          controller: employee_b_place,
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
                          controller: employee_phone,
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
                          controller: employee_mobile,
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
                          controller: employee_address,
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
                          controller: employee_rank,
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
                  ), const SpaceItem(),
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
                        width: screenWidth / 8.5,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: employee_email,
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
                        'Dept',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 7.8,
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
                              items: departments.map(
                                    (String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                },
                              ).toList(),
                              onChanged: (thedept) {
                                setState(() {
                                  selectedDepartment = (thedept.toString());
                                });
                              },
                              value: selectedDepartment,
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
                          controller: employee_salary,
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
                  const AddPowersButton(),
                  const SpaceItem(),
                ],
              ),
            ),
          ),
          BlocConsumer<AddEmployeeCubit , PostState<BaseEntity>>(
            builder: (context, state) {
              return state.maybeWhen(
                idle: (){
                  return  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColors.darkBlue,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        context
                            .read<AddEmployeeCubit>()
                            .emitAddEmployee(
                          addEmployeeParams: AddEmployeeParams(
                            salary: employee_salary.text ,
                            address: employee_address.text,
                            name: employee_name .text,
                            branchId: widget.branchId,
                            mobile:employee_mobile.text,
                            birthDate: birth_date,
                            birthPlace: employee_b_place.text,
                            email: employee_email.text,
                            gender:employee_gender.text ,
                            motherName: employee_mother_name.text,
                            nationalId: employee_id.text,
                            phoneNumber: employee_phone.text,
                            rank: employee_rank.text,
                          ),);
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
                orElse: () {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColors.darkBlue,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        // context
                        //     .read<AddEmployloeeCubit>()
                        //     .emitAddEmployee(
                        //     addEmployeeParams: AddEmployeeParams(
                        //     salary: employee_salary.text ,
                        //     address: employee_address.text,
                        //     name: employee_name .text,
                        //     branchId: widget.branchId,
                        //     mobile:employee_mobile.text,
                        //     birthDate: birth_date,
                        //     birthPlace: employee_b_place.text,
                        //     email: employee_email.text,
                        //     gender:employee_gender.text ,
                        //     motherName: employee_mother_name.text,
                        //     nationalId: employee_id.text,
                        //     phoneNumber: employee_phone.text,
                        //     rank: employee_rank.text,
                        // ),
                       // );
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