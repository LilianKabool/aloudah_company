import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/GetTrucksEntity.dart';
import 'package:aloudeh_company/features/admin/data/entity/truck_record_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_trucks_params.dart';
import 'package:aloudeh_company/features/admin/data/params/params/truck_record_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_trucks_by_branch_id_pagination_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/view_truck_for_employee.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import 'divider_item.dart';

class BuildTrucksListForEmployee extends StatefulWidget {
  final int branchName;

  const BuildTrucksListForEmployee({super.key, required this.branchName});

  @override
  State<BuildTrucksListForEmployee> createState() =>
      _BuildTrucksListForEmployeeState();
}

class _BuildTrucksListForEmployeeState
    extends State<BuildTrucksListForEmployee> {
  late GetAllTrucksPaginatedCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllTrucksPaginatedCubit>();
    cubit.emitGetAlltrucks(
        getTruckParams: GetTruckParams(branchId: widget.branchName));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllTrucksPaginatedCubit,
        PaginationStateTest<GetAllTrucks>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(child: CupertinoActivityIndicator()),
          orElse: () => Center(child: Text('No trucks available')),
          success: (trucks, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAlltrucks(
                  getTruckParams: GetTruckParams(branchId: widget.branchName)),
              onLoading: () => cubit.emitGetAlltrucks(
                  getTruckParams: GetTruckParams(branchId: widget.branchName),
                  loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  GetAllTrucks truck = trucks[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            truck.line,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${truck.number}',
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewTruckForEmployee(
                                          truckNumber: truck.number,
                                        )));
                          },
                          child: Text(
                            'view',
                            style: TextStyle(
                              color: AppColors.yellow,
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const DividerItem(),
                itemCount: trucks.length,
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
