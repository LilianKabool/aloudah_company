
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/delete_driver_cubit.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_drivers_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_drivers_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/delete_driver_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/edit_driver_screen.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_driver_b_manager.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'divider_item.dart';
import 'driver_item_b_manager.dart';


class BuildDriversListB_Manager extends StatefulWidget{
  @override
  State<BuildDriversListB_Manager> createState() => _BuildDriversListB_ManagerState();
}

class _BuildDriversListB_ManagerState extends State<BuildDriversListB_Manager> {
  late GetAllDriversCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllDriversCubit>();
    cubit.emitGetAllDrivers();
  }



  Widget build(BuildContext context) {
    return BlocConsumer<GetAllDriversCubit, PaginationStateTest<DriverPaginatedEntity>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () =>
          const Center(child: CupertinoActivityIndicator()),
          orElse: () =>
          const Center(child: Text('No Branches available')),
          success: (data, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllDrivers(),
              onLoading: () =>
                  cubit.emitGetAllDrivers(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${data[index].name}',
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
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewDriverB_Manager(
                                driver_id: data[index].id,
                                driver_phone: int.parse(data[index].phoneNumber),
                                driver_name: data[index].name,
                                driver_emp_date: data[index].name,
                                driver_address: data[index].address,
                                d_certificate_type: 'd_certificate_type',
                                driver_b_date: '14/1/2002',
                                driver_b_place: 'jaramana',
                                driver_gender: 'male',
                                driver_mobile: data[index].phoneNumber,
                                driver_salary: 5000,
                                driver_mother_name: 'mom',
                                driver_rank: 'B_manager',
                                driver_rate: 2.5,
                                driver_resignation_date: 'driver_resignation_date',
                                driver_vacations: 1,
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
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>EditDriverScreen()));
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
                          onPressed: (){
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    BlocConsumer<
                                        DeleteDriverCubit,
                                        PostState<BaseEntity>>(
                                      listener: (ctx, state) {
                                        state.whenOrNull(
                                          success: (data) {
                                            print(
                                                "driver deleted successfully");
                                            context
                                                .read<
                                                GetAllDriversCubit>()
                                                .emitGetAllDrivers();
                                            // Navigator.pop(context);

                                            // context.read<GetAllCustomersEmployeePaginatedCubit>().removeCustomer(customerId);
                                            print(
                                                "Refresh drivers list called");
                                            Navigator.pop(context);
                                          },
                                          error: (error) {
                                            Fluttertoast.showToast(
                                              msg:
                                              "Failed to delete driver",
                                              toastLength:
                                              Toast.LENGTH_SHORT,
                                            );
                                          },
                                        );
                                      },
                                      builder: (ctx, state) {
                                        return AlertDialog(
                                          title: Text(
                                            "do you want to delete this driver ?",
                                            style: TextStyle(
                                              fontFamily:
                                              'bahnschrift',
                                              color:
                                              AppColors.darkBlue,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          content: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceAround,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  print(
                                                      "Delete driver button pressed");
                                                  context
                                                      .read<
                                                      DeleteDriverCubit>()
                                                      .emitDeleteDriver(
                                                    deleteDriverParams:
                                                    DeleteDriverParams(
                                                        driverId:
                                                        data[index].id.toString()),
                                                  );
                                                },
                                                child: const Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                    color: AppColors
                                                        .yellow,
                                                    fontFamily:
                                                    'bahnschrift',
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(
                                                      context)
                                                      .pop();
                                                },
                                                child: const Text(
                                                  'No',
                                                  style: TextStyle(
                                                    color: AppColors
                                                        .yellow,
                                                    fontFamily:
                                                    'bahnschrift',
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ));
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
                itemCount: data.length,
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