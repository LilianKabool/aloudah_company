import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_drivers_By_Branch_id_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_driver_by_branch_id_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_drivers_by_branch_id_pagination_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/view_driver_for_admin.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'divider_item.dart';
import 'driver_item_for_admin.dart';

class BuildDriversListForAdmin extends StatefulWidget {
  final int branchId;

  BuildDriversListForAdmin({required this.branchId});

  @override
  State<BuildDriversListForAdmin> createState() =>
      _BuildDriversListForAdminState();
}

class _BuildDriversListForAdminState extends State<BuildDriversListForAdmin> {
  late GetAllDriversPaginatedCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllDriversPaginatedCubit>();
    cubit.emitGetAllDrivers(
        getDriverByBranchIdParams:
            GetDriverByBranchIdParams(branchId: widget.branchId.toString()));
  }

  Widget build(BuildContext context) {
    return BlocConsumer<GetAllDriversPaginatedCubit,
        PaginationStateTest<DataForDriver>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(child: CupertinoActivityIndicator()),
          orElse: () => Center(child: Text('No employees available')),
          success: (data, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllDrivers(
                  getDriverByBranchIdParams: GetDriverByBranchIdParams(
                      branchId: (widget.branchId.toString()))),
              onLoading: () => cubit.emitGetAllDrivers(
                  getDriverByBranchIdParams: GetDriverByBranchIdParams(
                      branchId: (widget.branchId.toString())),
                  loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    DataForDriver getDriversByBranchentity = data[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              getDriversByBranchentity.name,
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
                                    builder: (context) => ViewDriverForAdmin(
                                      driver_id: getDriversByBranchentity.id,
                                      // driver_resignation_date:getDriversByBranchentity ,
                                      // driver_rate:getDriversByBranchentity,
                                      // driver_rank:getDriversByBranchentity. ,
                                      driver_phone: int.parse(
                                          getDriversByBranchentity.phoneNumber
                                              .toString()),
                                      driver_name:
                                          getDriversByBranchentity.name,
                                      // driver_mother_name:getDriversByBranchentity. ,
                                      // driver_salary:getDriversByBranchentity. ,
                                      // driver_mobile:getDriversByBranchentity. ,
                                      // driver_gender:getDriversByBranchentity. ,
                                      driver_emp_date: getDriversByBranchentity
                                          .employmentDate
                                          .toString(),
                                      // driver_b_place:getDriversByBranchentity. ,
                                      // driver_b_date:getDriversByBranchentity. ,
                                      driver_address:
                                          getDriversByBranchentity.address,
                                      // d_certificate_type:getDriversByBranchentity. ,
                                      // driver_vacations:getDriversByBranchentity. ,
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
                  separatorBuilder: (context, index) => const DividerItem(),
                  itemCount: data.length,
                ),
              ),
            );
          },
        );
      },
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
    );
  }
}
