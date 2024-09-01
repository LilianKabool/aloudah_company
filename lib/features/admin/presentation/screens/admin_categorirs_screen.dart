import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_branches_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/trips_list_for_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/customers_list_for_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/employees_list_for_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trucks_list_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../employee/presentation/screens/pagination_state_test.dart';
import '../widgets/buttons_row_admin_main_screen.dart';
import '../widgets/search_field_in_admin_main_screen.dart';
import 'branches_list_for_admin_screen.dart';

class AdminCategoriesScreen extends StatefulWidget {
  AdminCategoriesScreen({super.key});

  @override
  State<AdminCategoriesScreen> createState() => _AdminCategoriesScreenState();
}

class _AdminCategoriesScreenState extends State<AdminCategoriesScreen> {



  late GetAllBranchesPaginatedCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllBranchesPaginatedCubit>();
    cubit.emitGetAllBranches();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ButtonsRowAdminMainScreen(),
            SizedBox(
              height: screenHeight / 30,
            ),
            SearchFieldInAdminMainScreen(),
            SizedBox(
              height: screenHeight / 30,
            ),
            Text(
              'Tell us',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'where do you want to go?',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trips-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trips List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripsListForAdmin()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Employees-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Employees List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (_) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.2),
                                        BlendMode.dstIn,
                                      ),
                                      child: Image.asset(
                                        'assets/images/Logo2.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    BlocConsumer<GetAllBranchesPaginatedCubit,
                                        PaginationStateTest<
                                            GetAllBranchesPaginatedEntity>>(
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          loading: () =>  Center(child: CupertinoActivityIndicator()),
                                          orElse: () =>  Center(child: Text('No employees available')),
                                          success: (data, canLoadMore) {
                                            return SmartRefresher(
                                              enablePullDown: true,
                                              controller: _refreshController,
                                              onRefresh: () => cubit.emitGetAllBranches(),
                                              onLoading: () => cubit.emitGetAllBranches(loadMore: true),
                                              enablePullUp: canLoadMore != 0,
                                              child:Padding(
                                                padding:  EdgeInsets.all(8.0),
                                                child: ListView.builder(
                                                  itemBuilder: (context, index) {
                                                    GetAllBranchesPaginatedEntity branches= data[index];
                                                    return GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    EmployeesListForAdmin(branchId:branches.branchId)));
                                                      },
                                                      child: Container(
                                                        height: 40.h,
                                                        margin: EdgeInsets.symmetric(
                                                            horizontal: 20.w,
                                                            vertical: 10.h),
                                                        decoration: BoxDecoration(
                                                          color: AppColors.mediumBlue,
                                                          borderRadius: BorderRadius.only(
                                                            bottomRight: Radius.circular(
                                                                20.r),
                                                            topLeft: Radius.circular(
                                                                20.r),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '${branches.branchDesk}',
                                                            style: TextStyle(
                                                              color: AppColors.pureBlack,
                                                              fontFamily: 'bahnschrift',
                                                              fontSize: 16.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  itemCount: data.length,
                                                ),
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

                                    ),
                                  ],
                                );
                              },
                              backgroundColor: AppColors.pureWhite,
                              showDragHandle: true,
                            );
                            ;
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trucks-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trucks List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (_) {
                                return Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/Location.png',
                                      ),
                                      width: 100.w,
                                      height: 100.h,
                                    ),
                                    Expanded( // استخدام Expanded هنا
                                      child: BlocConsumer<GetAllBranchesPaginatedCubit, PaginationStateTest<GetAllBranchesPaginatedEntity>>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            loading: () => Center(child: CupertinoActivityIndicator()),
                                            orElse: () => Center(child: Text('No Branches available')),
                                            success: (data, canLoadMore) {
                                              return SmartRefresher(
                                                enablePullDown: true,
                                                controller: _refreshController,
                                                onRefresh: () => cubit.emitGetAllBranches(),
                                                onLoading: () => cubit.emitGetAllBranches(loadMore: true),
                                                enablePullUp: canLoadMore != 0,
                                                child: ListView.builder( // تغليف ListView.builder داخل Expanded
                                                  itemBuilder: (context, index) {
                                                    GetAllBranchesPaginatedEntity getAllBranchesPaginatedEntity = data[index];
                                                    return GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                           MaterialPageRoute(
                                                            builder: (context) => TrucksListForAdmin(
                                                              branchId: getAllBranchesPaginatedEntity.branchId,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        height: 40.h,
                                                        margin: EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                          vertical: 10.h,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: AppColors.darkBlue,
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(20.r),
                                                            bottomLeft: Radius.circular(20.r),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '${getAllBranchesPaginatedEntity.branchDesk}',
                                                            style: TextStyle(
                                                              color: AppColors.pureWhite,
                                                              fontFamily: 'bahnschrift',
                                                              fontSize: 16.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
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
                                      ),
                                    ),
                                  ],
                                );
                              },
                              backgroundColor: AppColors.pureWhite,
                            );
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            ,
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Customers-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Customers List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CustomersListForAdmin()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Company-Branches.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Company Branches',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BranchesListForAdminScreen()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Reports-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Reports List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
