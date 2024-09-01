import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/params/params/delete_branch_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/delete_branch_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_branches_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/edit_branch_screen.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/view_branch_for_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trucks_list_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../employee/presentation/screens/pagination_state_test.dart';
import '../../data/entity/get_all_branches_paginated_entity.dart';
import '../widgets/add_branch_button_widget.dart';
import '../widgets/branches_list_intro_decoration.dart';
import '../widgets/space_item.dart';

class BranchesListForAdminScreen extends StatefulWidget {
  const BranchesListForAdminScreen({super.key});

  @override
  State<BranchesListForAdminScreen> createState() =>
      _BranchesListForAdminScreenState();
}


class _BranchesListForAdminScreenState
    extends State<BranchesListForAdminScreen> {
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
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Stack(
          children: [
            Container(
              height: screenHeight,
              decoration: BoxDecoration(
                color: AppColors.pureWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(400.r),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BranchesListIntroDecoration(),
                Expanded(
                  child: BlocConsumer<GetAllBranchesPaginatedCubit,
                      PaginationStateTest<GetAllBranchesPaginatedEntity>>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () =>
                            const Center(child: CupertinoActivityIndicator()),
                        orElse: () =>
                            const Center(child: Text('No Branches available')),
                        success: (branches, canLoadMore) {
                          return SmartRefresher(
                            enablePullDown: true,
                            controller: _refreshController,
                            onRefresh: () => cubit.emitGetAllBranches(),
                            onLoading: () =>
                                cubit.emitGetAllBranches(loadMore: true),
                            enablePullUp: canLoadMore != 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  GetAllBranchesPaginatedEntity
                                      branchesPaginatedEntity = branches[index];
                                  return Container(
                                    height: 62.h,
                                    padding: const EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightBlue,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            branchesPaginatedEntity.branchAddress,
                                            style: TextStyle(
                                              color: AppColors.yellow,
                                              fontFamily: 'bahnschrift',
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ViewBranchForAdmin(
                                                            branchId:
                                                                branchesPaginatedEntity
                                                                    .branchId,
                                                            branchDesk:
                                                                branchesPaginatedEntity
                                                                    .branchDesk,
                                                            branchAddress:
                                                                branchesPaginatedEntity
                                                                    .branchAddress,

                                                        )));
                                          },
                                          icon: const Icon(
                                            Icons.directions,
                                            color: AppColors.darkBlue,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditBranchScreen()));
                                          },
                                          icon: const Icon(
                                            Icons.edit,
                                            color: AppColors.darkBlue,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  BlocConsumer<
                                                      DeleteBranchCubit,
                                                      PostState<BaseEntity>>(
                                                listener: (ctx, state) {
                                                  state.whenOrNull(
                                                    success: (data) {
                                                      print(
                                                          "branch deleted successfully");
                                                      context
                                                          .read<
                                                              GetAllBranchesPaginatedCubit>()
                                                          .emitGetAllBranches();
                                                      // Navigator.pop(context);

                                                      // context.read<GetAllCustomersEmployeePaginatedCubit>().removeCustomer(customerId);
                                                      print(
                                                          "Refresh branches list called");
                                                      Navigator.pop(context);
                                                    },
                                                    error: (error) {
                                                      Fluttertoast.showToast(
                                                        msg:
                                                            "Failed to delete branch",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                      );
                                                    },
                                                  );
                                                },
                                                builder: (ctx, state) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      "do you want to delete this branch ?",
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
                                                                "Delete branch button pressed");
                                                            context
                                                                .read<
                                                                    DeleteBranchCubit>()
                                                                .emitDeleteBranch(
                                                                  deleteBranchParams:
                                                                      DeleteBranchParams(
                                                                          branchId:
                                                                              branchesPaginatedEntity.branchId),
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
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            color: AppColors.darkBlue,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TrucksListForAdmin(
                                                            branchId:
                                                                branchesPaginatedEntity
                                                                    .branchId)));
                                          },
                                          icon: const Icon(
                                            Icons.fire_truck_outlined,
                                            color: AppColors.darkBlue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SpaceItem(),
                                itemCount: branches.length,
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
                ),
                 AddBranchButtonWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
