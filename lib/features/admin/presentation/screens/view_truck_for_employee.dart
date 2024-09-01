import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/truck_information_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/truck_information_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/truck_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_driver_date_row.dart';
import '../widgets/truck_information_text.dart';

class ViewTruckForEmployee extends StatefulWidget {
  @override
  State<ViewTruckForEmployee> createState() => _ViewTruckForEmployeeState();
  final int truckNumber;

  const ViewTruckForEmployee({
    super.key,
    required this.truckNumber,
  });
}

class _ViewTruckForEmployeeState extends State<ViewTruckForEmployee> {
  String trip = 'DM-1-600';

  String driver = 'Mohammed Ali Hwidi';

  String date = '25-07-2009';

  late TruckInformationCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TruckInformationCubit>();
    cubit.emitTruckInformation(
        truckInformationParams:
            TruckInformationParams(truckNumber: widget.truckNumber.toString()));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TruckInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          const SpaceItem(),
          BlocConsumer<TruckInformationCubit, GetState<TruckInformationEntity>>(
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'ID',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 5.5,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.id}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Line',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 7,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.line,
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Create',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.createdBy,
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Last Edit',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 16,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.editingBy}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceItem(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Editing',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.darkBlue,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.darkBlue,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: screenWidth / 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.editingDate}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceItem(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          const DividerItem(),
          const SpaceItem(),
          const TripDriverDateRow(),
          const SpaceItem(),
          BlocConsumer<TruckInformationCubit, GetState<TruckInformationEntity>>(
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
                    return Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {

                          return GestureDetector(
                            onTap: () {
                              //todo:
                              //هون بدو يوديني لتفاصيل الرحلة
                            },
                            child: Container(
                              height: 80.h,
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50.r),
                                  topRight: Radius.circular(50.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                     data.data.number.toString(),
                                      style: TextStyle(
                                        color: AppColors.pureBlack,
                                        fontFamily: 'bahnschrift',
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      data.data.drivers[index].name,
                                      style: TextStyle(
                                        color: AppColors.pureBlack,
                                        fontFamily: 'bahnschrift',
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      data.data.editingDate.toString(),
                                      style: TextStyle(
                                        color: AppColors.pureBlack,
                                        fontFamily: 'bahnschrift',
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SpaceItem(),
                        itemCount: 1,
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
