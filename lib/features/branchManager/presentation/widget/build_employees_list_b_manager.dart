import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_drivers_cubit.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_employee_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_employees_bManager_entity.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/edit_employee_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_employee_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import 'divider_item.dart';
import 'employee_item_b_manager.dart';

class BuildEmployeesListB_Manager extends StatefulWidget {
  @override
  State<BuildEmployeesListB_Manager> createState() => _BuildEmployeesListB_ManagerState();
}

class _BuildEmployeesListB_ManagerState extends State<BuildEmployeesListB_Manager> {
  late GetAllEmployeesBmanagerCubit cubit;


  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllEmployeesBmanagerCubit>();
    cubit.emitGetAllEmployees();
  }
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllEmployeesBmanagerCubit,
        GetState<GetAllEmployeesEntity>>(
      listener: (context, state) {
        state.whenOrNull(
          error: (networkExceptions) => Fluttertoast.showToast(
            msg: NetworkExceptions.getErrorMessage(networkExceptions),
            toastLength: Toast.LENGTH_SHORT,
          ),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: Text("No data available")),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${data.data[index].name}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      Container(
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewEmployeeB_Manager(
                                         // employee_address: data.data[index],
                                          // employee_b_date:employee_b_date ,
                                          // employee_b_place:employee_b_place ,
                                          // employee_emp_date:employee_emp_date ,
                                          // employee_gender:employee_gender ,
                                          // employee_id: data.data[index].id,
                                          // //  employee_mobile: data.data[index].phoneNumber,
                                          // // employee_mother_name:employee_mother_name ,
                                          // employee_name: data.data[index].name,
                                          // employee_phone: int.parse(
                                          //     data.data[index].phoneNumber),
                                          // employee_phone:employee_phone ,
                                          // employee_rank: employee_rank,
                                          //  employee_rate: employee_rate,
                                          //  employee_resignation_date:employee_resignation_date ,
                                          //     employee_salary: employee_salary,
                                          //    employee_vacations:employee_vacations ,
                                        )));
                          },
                          child: Text(
                            'View',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EditEmployeeB_Manager()));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                "do you want to delete this employee ?",
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.darkBlue,
                                  fontSize: 16.sp,
                                ),
                              ),
                              content: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                        color: AppColors.yellow,
                                        fontFamily: 'bahnschrift',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                        color: AppColors.yellow,
                                        fontFamily: 'bahnschrift',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => DividerItem(),
              itemCount: data.data.length,
            );
          },
        );
      },
    );
  }
}
