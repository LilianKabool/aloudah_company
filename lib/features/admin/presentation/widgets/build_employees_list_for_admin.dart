import 'package:aloudeh_company/features/admin/data/entity/employee_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_employees_By_Branch_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_employee_by_id_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_employee_paginated_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_employee_by_id_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_employees_by_brunch_id_pagination_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/view_employee_for_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';

class BuildEmployeesListForAdmin extends StatefulWidget {
  final int branchId ;
  BuildEmployeesListForAdmin({super.key , required this.branchId});

  @override
  State<BuildEmployeesListForAdmin> createState() =>
      _BuildEmployeesListForAdminState();
}

class _BuildEmployeesListForAdminState
    extends State<BuildEmployeesListForAdmin> {
  late GetAllEmployeesPaginatedCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllEmployeesPaginatedCubit>();
    cubit.emitGetAllEmployee(getEmployeeByIdParams: GetEmployeeByIdParams(employeeId: widget.branchId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllEmployeesPaginatedCubit,
        PaginationStateTest<dataforGetAllEmployee>>(
      listener: (context, state) {
        state.whenOrNull(
          error: (NetworkExceptions exception) {
            Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(exception),
              toastLength: Toast.LENGTH_SHORT,
            );
          },
          success: (data, canLoadMore) {
            if (canLoadMore == cubit.lastPage) {
              _refreshController.loadNoData();
            } else {
              _refreshController.loadComplete();
            }
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CupertinoActivityIndicator()),
          orElse: () => const Center(child: Text('No employees available')),
          success: (employees, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllEmployee(getEmployeeByIdParams: GetEmployeeByIdParams(employeeId: widget.branchId)),
              onLoading: () => cubit.emitGetAllEmployee(getEmployeeByIdParams: GetEmployeeByIdParams(employeeId: widget.branchId),loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    dataforGetAllEmployee getEmployeeByBranchentity =
                        employees[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              getEmployeeByBranchentity.name,
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
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewEmployeeForAdmin(
                                      employeeId:
                                      employees[index].id,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SpaceItem(),
                  itemCount: employees.length,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
