import 'package:aloudeh_company/features/branchManager/controllers/get_all_trips_by_trucks_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_all_trips_by_trucks_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/truck_trips_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global_states/get_state.dart';
import '../../../admin/presentation/widgets/space_item.dart';
import '../../data/entity/get_all_trips_by_trucks_entity.dart';

class BuildTruckTripsList extends StatefulWidget {
  final String truck_id;

  BuildTruckTripsList({required this.truck_id});

  @override
  State<BuildTruckTripsList> createState() => _BuildTruckTripsListState();
}

class _BuildTruckTripsListState extends State<BuildTruckTripsList> {
  late GetAllTripsByTrucksCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllTripsByTrucksCubit>();
    cubit.emitGetAllTripsByTrucks(
      getAllTripsByTrucksParams:
          GetAllTripsByTrucksParams(truck_id: widget.truck_id),
    );
  }

  Widget build(BuildContext context) {
    return BlocConsumer<GetAllTripsByTrucksCubit,
        GetState<GetAllTripsByTrucksEntity>>(
      listener: (context, state) {
        state.whenOrNull(
          error: (NetworkExceptions exception) {
            Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(exception),
              toastLength: Toast.LENGTH_SHORT,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: Text("No data available")),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //هون بدو يوديني لتفاصيل الرحلة
                  },
                  child: Container(
                    height: 80.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${data.data.data[index].number}',
                                  style: TextStyle(
                                    color: AppColors.mediumBlue,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${data.data.data[index].date}',
                                  style: TextStyle(
                                    color: AppColors.mediumBlue,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${data.data.data[index].driver.name}',
                                  style: TextStyle(
                                    color: AppColors.mediumBlue,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.directions,
                                  color: AppColors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SpaceItem(),
              itemCount: data.data.data.length,
            );
          },
        );
      },
    );
  }
}
