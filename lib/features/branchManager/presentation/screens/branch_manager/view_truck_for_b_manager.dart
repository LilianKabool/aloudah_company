import 'package:aloudeh_company/features/branchManager/controllers/get_all_trips_by_trucks_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_all_trips_by_trucks_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/truck_information_text.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/truck_trips_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/constants/colors_constants.dart';

import '../../../../../core/error/network_exceptions.dart';
import '../../../../../core/global_states/get_state.dart';
import '../../../data/entity/get_all_trips_by_trucks_entity.dart';
import '../../widget/delete_edit_buttons_in_view_truck_b_manager.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';

class ViewTruckForB_Manager extends StatefulWidget {

  final String truck_id;

  final String truck_line;

  final String truck_create;

  final String truck_last_edit;

  final String truck_editing_date;

  // final String  trip;
  // final String  driver ;
  // final String  date ;
  ViewTruckForB_Manager({
    required this.truck_id,
    // required this.driver ,
    // required this.date ,
    required this.truck_editing_date,
    // required this.trip ,
    required this.truck_line,
    required this.truck_last_edit,
    required this.truck_create,
  });

  @override
  State<ViewTruckForB_Manager> createState() => _ViewTruckForB_ManagerState();
}

class _ViewTruckForB_ManagerState extends State<ViewTruckForB_Manager> {
  Widget BuildTruckTripsList() =>
      BlocConsumer<GetAllTripsByTrucksCubit,
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
                  return Container(
                    // height: 80.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(
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
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: AppColors.yellow,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              '${data.data.data[index].driver.name}',
                              style: TextStyle(
                                color: AppColors.mediumBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
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
  late GetAllTripsByTrucksCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllTripsByTrucksCubit>();
    cubit.emitGetAllTripsByTrucks(
      getAllTripsByTrucksParams: GetAllTripsByTrucksParams(
          truck_id: widget.truck_id),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TruckInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SpaceItem(),
          DeleteEditButtonsInViewTruckB_Manager(),
          DividerSpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ID',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.yellow,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '${widget.truck_id}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Container(
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Line',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.yellow,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '${widget.truck_line}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          Container(
            height: 80.h,
            width: 150,
            decoration: BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.yellow,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '${widget.truck_create}',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Last Edit',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.yellow,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '${widget.truck_last_edit}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Container(
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Editing Date',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                            color: AppColors.yellow,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '${widget.truck_editing_date}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerSpaceItem(),
          //TruckInformationForB_Manager(),/* اذا ضربت معك امعلومات هيك بتحذفي من السطر 44 لل 165 وبتفكي تعليق هدول السطرين بيمشي الحال*/
          //DividerSpaceItem(),
          TruckTripsIntro(),
          SpaceItem(),
          Expanded(
            child: BuildTruckTripsList(),
          ),
        ],
      ),
    );
  }
}