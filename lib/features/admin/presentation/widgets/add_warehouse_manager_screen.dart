import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/params/add_warehouse_manager_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/add_warehouse_manager_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import 'add_manager_text.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';

class EnterWManagerInformation extends StatefulWidget {
  var manager_name = TextEditingController();
  var nationalId = TextEditingController();
  var manager_email = TextEditingController();
  var manager_phone = TextEditingController();
  var manager_address = TextEditingController();
  var manager_mother_name = TextEditingController();
  var manager_rank = TextEditingController();
  var manager_salary = TextEditingController();
  var warehouse = TextEditingController();
  var manager_b_date = TextEditingController();
  var gender = ["male", "female", ""];

  var branches = ["Damascus", "Aleppo", "Daraa", ""];

  var warehouses = ["Damascus", "Aleppo", "Daraa", ""];

  EnterWManagerInformation({super.key});

  @override
  State<EnterWManagerInformation> createState() =>
      _EnterWManagerInformationState();
  var selectedGender = "";
  var selectedBranch = "";
  var birth_date = ' ';
  var emp_date = ' ';
  var selectedWarehouse = "";
  bool showDate = false;

  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
}

class _EnterWManagerInformationState extends State<EnterWManagerInformation> {
  void datePicker1(BuildContext context) {
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
            DateFormat('yyyy-MM-dd').format(widget.selectedDate1);
        widget.showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker2(BuildContext context) {
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
        widget.emp_date = DateFormat('yyyy-MM-dd').format(widget.selectedDate2);
        widget.showDate = true;
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
                    controller: widget.nationalId,
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
                    controller: widget.manager_name,
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
                    controller: widget.manager_mother_name,
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
                            widget.selectedGender = (thegender.toString());
                          });
                        },
                        value: widget.selectedGender,
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
                        child: widget.showDate
                            ? Text(
                                DateFormat('yyyy-MM-dd')
                                    .format(widget.selectedDate1),
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
                  'email',
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
                    controller: widget.manager_email,
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
                    controller: widget.manager_phone,
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
                    controller: widget.manager_address,
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
                    controller: widget.manager_rank,
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
                    controller: widget.warehouse,
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
                  'Warehouse',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                // SizedBox(
                //   width: screenWidth/13,
                // ),
                Expanded(
                  child:
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
                            controller: widget.manager_salary,
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
                    ),)
                  // child: Container(
                  //   color: AppColors.mediumBlue,
                  //   height: 40.h,
                  //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //   child: DropdownButtonHideUnderline(
                  //     child: DropdownButton(
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       dropdownColor: AppColors.yellow,
                  //       iconEnabledColor: AppColors.darkBlue,
                  //       items: widget.warehouses.map(
                  //         (String item) {
                  //           return DropdownMenuItem<String>(
                  //             value: item,
                  //             child: Text(item),
                  //           );
                  //         },
                  //       ).toList(),
                  //       onChanged: (thewarehouse) {
                  //         setState(() {
                  //           widget.selectedWarehouse =
                  //               (thewarehouse.toString());
                  //         });
                  //       },
                  //       value: widget.selectedWarehouse,
                  //     ),
                  //   ),
                  // ),
              ],
            ),
            BlocConsumer<AddWarehouseManagerCubit, PostState<BaseEntity>>(
              listener: (context, state) {
                state.whenOrNull(
                  error: (networkExceptions) {
                    Fluttertoast.showToast(
                        msg: NetworkExceptions.getErrorMessage(
                            networkExceptions),
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: CupertinoColors.activeBlue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  success: (data) {
                    Fluttertoast.showToast(
                        msg: data.message,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: CupertinoColors.activeBlue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                );
              },
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
                              .read<AddWarehouseManagerCubit>()
                              .emitAddBranchManager(
                                addWarehouseManagerParams:
                                    AddWarehouseManagerParams(
                                  nationalId: int.parse(widget.nationalId.text),
                                  managerName: widget.manager_name.text,
                                  warehouseId: widget.warehouse,
                                  email: widget.manager_email.text,
                                  phoneNumber: widget.manager_phone.text,
                                  gender: widget.selectedGender.toString(),
                                  motherName: widget.manager_mother_name.text,
                                  dateOfBirth: widget.birth_date,
                                  managerAddress: widget.manager_address.text,
                                  salary: widget.manager_salary.text,
                                  rank: widget.manager_rank.text,
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
                      child: CircularProgressIndicator(),
                    );
                  },
                  idle: () {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37.r),
                        color: AppColors.darkBlue,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          context
                              .read<AddWarehouseManagerCubit>()
                              .emitAddBranchManager(
                                addWarehouseManagerParams:
                                    AddWarehouseManagerParams(
                                  nationalId: int.parse(widget.nationalId.text),
                                  managerName: widget.manager_name.text,
                                  warehouseId: 5,
                                  email: widget.manager_email.text,
                                  phoneNumber: widget.manager_phone.text,
                                      gender: widget.selectedGender.toString(),

                                      motherName: widget.manager_mother_name.text,
                                  dateOfBirth: widget.birth_date,
                                  managerAddress: widget.manager_address.text,
                                  salary: widget.manager_salary.text,
                                  rank: widget.manager_rank.text,
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
                );
              },
            ),
          ],
        ),
    ),
      );
  }
}

class AddWarehouseManager extends StatelessWidget {
  const AddWarehouseManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddManagerText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
          Text(
            'Please Enter WManager Information',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const DividerBetweenListElements(),
          const SpaceItem(),
          Expanded(child: EnterWManagerInformation()),
        ],
      ),
    );
  }
}
