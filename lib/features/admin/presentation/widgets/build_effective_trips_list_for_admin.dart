import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_active_trips_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_active_trips_paginated_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/effective_trip_item_for_admin.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/error/network_exceptions.dart';
import '../screens/effective_trip_record_for_admin.dart';
import 'divider_item.dart';

class BuildEffectiveTripsListForAdmin extends StatefulWidget {
  const BuildEffectiveTripsListForAdmin({super.key});

  @override
  State<BuildEffectiveTripsListForAdmin> createState() =>
      _BuildEffectiveTripsListForAdminState();
}

class _BuildEffectiveTripsListForAdminState
    extends State<BuildEffectiveTripsListForAdmin> {
  late GetAllActiveTripsPaginatedCubit cubit;
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
    cubit = context.read<GetAllActiveTripsPaginatedCubit>();
    cubit.emitGetAllActiveTrips();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllActiveTripsPaginatedCubit,
        PaginationStateTest<dataForArctiveTrips>>(
      listener: (context, state) {
        state.whenOrNull(
          error: (NetworkExceptions exception) {
            Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(exception),
              toastLength: Toast.LENGTH_SHORT,
            );
          },
          success: (data, canLoadMore) {
            if (canLoadMore == 0) {
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
          success: (trips, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllActiveTrips(),
              onLoading: () => cubit.emitGetAllActiveTrips(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  dataForArctiveTrips activeTripsPaginatedAdminEntity =
                      trips[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            activeTripsPaginatedAdminEntity.number,
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
                                    builder: (context) =>
                                        EffectiveTripRecordForAdmin(
                                      activeTripId:
                                          activeTripsPaginatedAdminEntity.id,
                                      manafistId:
                                          activeTripsPaginatedAdminEntity
                                              .manifestId,
                                      branchId: activeTripsPaginatedAdminEntity
                                          .branchId,
                                      activeTripName:
                                          activeTripsPaginatedAdminEntity
                                              .number,
                                      branchName:
                                          activeTripsPaginatedAdminEntity
                                              .branch.desk,
                                      creatorName:
                                          activeTripsPaginatedAdminEntity
                                              .createdBy,
                                      destination:
                                          activeTripsPaginatedAdminEntity
                                              .destinationId
                                              .toString(),
                                      tripDate: activeTripsPaginatedAdminEntity
                                          .date
                                          .toString(),
                                      editorName:
                                          activeTripsPaginatedAdminEntity
                                              .editedBy
                                              .toString(),
                                      tripDriver:
                                          activeTripsPaginatedAdminEntity
                                              .driver.name,
                                      tripStatus:
                                          activeTripsPaginatedAdminEntity
                                              .status,
                                      tripTruck: activeTripsPaginatedAdminEntity
                                          .truck.number
                                          .toString(),
                                    ),
                                  ));
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
                itemCount: trips.length,
              ),
            );
          },
          orElse: () => const Center(child: Text('No trips available')),
        );
      },
    );
  }
}
