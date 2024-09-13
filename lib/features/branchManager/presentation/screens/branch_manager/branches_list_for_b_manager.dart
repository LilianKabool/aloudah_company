import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_branches_pagenation_cubit.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_branch_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../core/error/network_exceptions.dart';
import '../../../../employee/presentation/screens/pagination_state_test.dart';
import '../../../data/entity/get_all_branches_bm_entity.dart';
import '../../widget/branches_list_intro_decoration.dart';
import '../../widget/space_item.dart';

class BranchesListForB_Manager extends StatefulWidget {
  @override
  State<BranchesListForB_Manager> createState() =>
      _BranchesListForB_ManagerState();
}

class _BranchesListForB_ManagerState extends State<BranchesListForB_Manager> {


  late GetAllBranchesBMPaginatedCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllBranchesBMPaginatedCubit>();
    cubit.emitGetAllBranches();
  }
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BranchesListIntroDecoration(),
                  Expanded(
                      child: BlocConsumer<GetAllBranchesBMPaginatedCubit , PaginationStateTest<BranchForBM>>(
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
                                child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    BranchForBM Branches =branches[index] ;
                                    return Container(
                                      height: 62.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.lightBlue,
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            '${Branches.desk}',
                                            style: TextStyle(
                                              color: AppColors.yellow,
                                              fontFamily: 'bahnschrift',
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(
                                                  builder: (context) =>
                                                      ViewBranchForB_Manager()));
                                            },
                                            icon: Icon(
                                              Icons.directions,
                                              color: AppColors.darkBlue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) => SpaceItem(),
                                  itemCount: branches.length,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
