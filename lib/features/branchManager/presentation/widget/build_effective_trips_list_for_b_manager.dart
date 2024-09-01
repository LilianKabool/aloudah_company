
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_open_trips_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../employee/presentation/screens/pagination_state_test.dart';
import '../../data/entity/get_all_open_trips_entity.dart';
import 'divider_item.dart';
import 'open_trip_item_for_b_manager.dart';

class BuildOpenTripsListForB_Manager extends StatefulWidget{

  @override
  State<BuildOpenTripsListForB_Manager> createState() => _BuildOpenTripsListForB_ManagerState();
}

class _BuildOpenTripsListForB_ManagerState extends State<BuildOpenTripsListForB_Manager> {
  @override
  late GetAllOpenTripsCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllOpenTripsCubit>();
    cubit.emitGetAllOpenTrips();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<GetAllOpenTripsCubit,
        PaginationStateTest<OpenTrip>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(child: CupertinoActivityIndicator()),
          orElse: () => Center(child: Text('No OpenTrips available')),
          success: (data, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllOpenTrips(),
              onLoading: () => cubit.emitGetAllOpenTrips(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  OpenTrip listOfOpenTrips = data[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${listOfOpenTrips.number}',
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
                                          OpenTripItemForB_Manager(
                                            openTripName:listOfOpenTrips.number,
                                            manifestId: listOfOpenTrips.manifestId.toString(),
                                            destination:listOfOpenTrips.destinationId.toString() ,
                                            branch: listOfOpenTrips.branch.address.toString(),
                                            creator_name: listOfOpenTrips.createdBy.toString(),
                                             editor_name: listOfOpenTrips.editedBy.toString(),
                                            trip_date: listOfOpenTrips.date.toString(),
                                            trip_status: listOfOpenTrips.status.toString(),
                                            trip_truck: listOfOpenTrips.truck.number.toString(),
                                            trip_driver: listOfOpenTrips.driver.toString(),
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