import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_closed_trips_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_colsed_trips_entity.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/closed_trip_item_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/closed_trip_record_for_b_manager.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'divider_item.dart';

class BuildClosedTripsListForB_Manager extends StatefulWidget {
  @override
  State<BuildClosedTripsListForB_Manager> createState() =>
      _BuildClosedTripsListForB_ManagerState();
}

class _BuildClosedTripsListForB_ManagerState
    extends State<BuildClosedTripsListForB_Manager> {
  @override
  late GetAllClosedTripsCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllClosedTripsCubit>();
    cubit.emitGetAllClosedTrips();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<GetAllClosedTripsCubit,
        PaginationStateTest<ClosedTrip>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(child: CupertinoActivityIndicator()),
          orElse: () => Center(child: Text('No ClosedTrips available')),
          success: (data, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllClosedTrips(),
              onLoading: () => cubit.emitGetAllClosedTrips(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  ClosedTrip listOfClosedTrips = data[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${listOfClosedTrips.number}',
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
                                          ClosedTripRecordForB_Manager(
                                            manifest_id: listOfClosedTrips
                                                .manifestId
                                                .toString(),
                                            destination: listOfClosedTrips
                                                .destinationId
                                                .toString(),
                                            branch:
                                                listOfClosedTrips.branch.desk,
                                            creator_name:
                                                listOfClosedTrips.createdBy,
                                            editor_name: listOfClosedTrips
                                                .editedBy
                                                .toString(),
                                            trip_number:listOfClosedTrips.number ,
                                            trip_date: listOfClosedTrips.date
                                                .toString(),
                                            trip_status:
                                                listOfClosedTrips.status,
                                            trip_truck: listOfClosedTrips
                                                .truck.number
                                                .toString(),
                                            trip_driver: listOfClosedTrips
                                                .driver.name
                                                .toString(),
                                          )));
                            },
                            icon: Icon(
                              Icons.remove_red_eye,
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
