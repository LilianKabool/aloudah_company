import 'package:aloudeh_company/features/admin/data/entity/archive_trips_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_archive_trips_paginated_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/archived_trip_record_for_admin.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_archive_trips_cubit.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../branchManager/data/entity/get_all_archive_trips_entity.dart';
import 'divider_item.dart';

class BuildArchivedTripsListForAdmin extends StatefulWidget {
  const BuildArchivedTripsListForAdmin({super.key});

  @override
  State<BuildArchivedTripsListForAdmin> createState() =>
      _BuildArchivedTripsListForAdminState();
}

class _BuildArchivedTripsListForAdminState
    extends State<BuildArchivedTripsListForAdmin> {
  late GetAllArchiveTripsCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllArchiveTripsCubit>();
    cubit.emitGetAllArchiveTrips();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllArchiveTripsCubit,
        PaginationStateTest<ArchiveTrip>>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () =>
            const Center(child: CupertinoActivityIndicator()),
            orElse: () =>
            const Center(child: Text('No Branches available')),
            success: (trips, canLoadMore) {
              return SmartRefresher(
                enablePullDown: true,
                controller: _refreshController,
                onRefresh: () => cubit.emitGetAllArchiveTrips(),
                onLoading: () =>
                    cubit.emitGetAllArchiveTrips(loadMore: true),
                enablePullUp: canLoadMore != 0,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0),
                  child:
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        ArchiveTrip archiveTrip = trips[index];
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  archiveTrip.number,
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
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ArchivedTripRecordForBM(
                                      id:archiveTrip.id.toString(),
                                      manifest_id:archiveTrip.manifestId.toString(),
                                      trip_number:archiveTrip.number ,

                                    )));
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
                  ),
                ),
              );
            },
          );
        }, listener: (context, state)
    {
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