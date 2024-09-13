import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_information_branch_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../../../core/error/network_exceptions.dart';
import '../../../controllers/get_info_branch_cubit.dart';
import '../../../presentation/widget/branch_information_text.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/branch_information_for_employee.dart';
import '../../widget/divider_item.dart';

class ViewBranchForB_Manager extends StatefulWidget {
  @override
  State<ViewBranchForB_Manager> createState() => _ViewBranchForB_ManagerState();
}

class _ViewBranchForB_ManagerState extends State<ViewBranchForB_Manager> {

  late GetInfoForBranchBMCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetInfoForBranchBMCubit>();
    cubit.emitGetInfoBranchBM();
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BlocConsumer<GetInfoForBranchBMCubit,
                GetState<GetInfoBranchEntity>>(
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
                  orElse: () => const Center(child: Text("No information available")),
                  loading: () =>
                  const Center(child: CircularProgressIndicator()),
                  success: (data) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Desk',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 9,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.desk}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 25,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.address}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Manager',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 30,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.manager}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Mobile',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 13,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.mobile}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Opening',
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
                              width: screenWidth / 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.openingDate}',
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
                      ],
                    );
                  },
                );
              },

            ),
          ),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Trip',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Destination',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Date',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          BlocConsumer<GetInfoForBranchBMCubit,
              GetState<GetInfoBranchEntity>>(
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
                orElse: () => const Center(child: Text("No information available")),
                loading: () =>
                const Center(child: CircularProgressIndicator()),
                success: (data) {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripAfterInvoiceEmployee() /*ViewTripBeforInvoiceEmployee()*/));
                          },
                          child: Container(
                            height: 80.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                            decoration: BoxDecoration(
                              color: AppColors.darkBlue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50.r),
                                topRight: Radius.circular(50.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '${data.trips[index].number}',
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '${data.trips[index].destination}',
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
                                      fontFamily: 'bahnschrift',
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '${data.trips[index].date}',
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
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
                      separatorBuilder: (context, index) => SpaceItem(),
                      itemCount: data.trips.length,
                    ),
                  );
                },
              );
            },

          ),

        ],
      ),
    );
  }
}
