import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_trucks_by_branch_id_pagination_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_prices_list_cubit.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/branch_information_for_admin.dart';
import '../widgets/branch_information_text.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/prices_list_button_for_admin.dart';
import '../widgets/row_for_edit_delete_branch.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_driver_date_row.dart';

class ViewBranchForAdmin extends StatefulWidget {
  final int branchId;
  final String branchDesk;
  final String branchAddress;

  ViewBranchForAdmin({
    super.key,
    required this.branchId,
    required this.branchAddress,
    required this.branchDesk,
  });

  @override
  State<ViewBranchForAdmin> createState() => _ViewBranchForAdminState();
}

class _ViewBranchForAdminState extends State<ViewBranchForAdmin> {
  String trip = 'DM-1-600';

  String driver = 'Mohammed Ali Hwidi';

  String date = '25-07-2009';

  late GetTypePriceListPaginatedCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTypePriceListPaginatedCubit>();
    cubit.emitGetTypesPriceList();
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          // const RowForEditDeleteBranch(),
          const DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
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
                            widget.branchDesk,
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
                            widget.branchAddress,
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
                // const SpaceItem(),
                // Row(
                //   children: [
                //     Text(
                //       'Manager',
                //       style: TextStyle(
                //         fontFamily: 'bahnschrift',
                //         color: AppColors.darkBlue,
                //         fontSize: 16.sp,
                //       ),
                //     ),
                //     SizedBox(
                //       width: screenWidth / 30,
                //     ),
                //     Expanded(
                //       child: GestureDetector(
                //         onTap: (){
                //           // Navigator.push(context, MaterialPageRoute(builder:(context)=>const ViewBranchManagerScreen()));
                //         },
                //         child: Container(
                //           height: 40.h,
                //           color: AppColors.mediumBlue,
                //           child: Center(
                //             child: Text(
                //               branch_manager,
                //               style: TextStyle(
                //                 fontFamily: 'bahnschrift',
                //                 fontSize: 16.sp,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SpaceItem(),
                // Row(
                //   children: [
                //     Text(
                //       'Mobile',
                //       style: TextStyle(
                //         fontFamily: 'bahnschrift',
                //         color: AppColors.darkBlue,
                //         fontSize: 16.sp,
                //       ),
                //     ),
                //     SizedBox(
                //       width: screenWidth / 13,
                //     ),
                //     Expanded(
                //       child: Container(
                //         height: 40.h,
                //         color: AppColors.mediumBlue,
                //         child: Center(
                //           child: Text(
                //             branch_mobile,
                //             style: TextStyle(
                //               fontFamily: 'bahnschrift',
                //               fontSize: 16.sp,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SpaceItem(),
                // Row(
                //   children: [
                //     Column(
                //       children: [
                //         Text(
                //           'Opening',
                //           style: TextStyle(
                //             fontFamily: 'bahnschrift',
                //             color: AppColors.darkBlue,
                //             fontSize: 16.sp,
                //           ),
                //         ),
                //         Text(
                //           'Date',
                //           style: TextStyle(
                //             fontFamily: 'bahnschrift',
                //             color: AppColors.darkBlue,
                //             fontSize: 16.sp,
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       width: screenWidth / 20,
                //     ),
                //     Expanded(
                //       child: Container(
                //         height: 40.h,
                //         color: AppColors.mediumBlue,
                //         child: Center(
                //           child: Text(
                //             branch_opening_date,
                //             style: TextStyle(
                //               fontFamily: 'bahnschrift',
                //               fontSize: 16.sp,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SpaceItem(),
                // Row(
                //   children: [
                //     Column(
                //       children: [
                //         Text(
                //           'Closing',
                //           style: TextStyle(
                //             fontFamily: 'bahnschrift',
                //             color: AppColors.darkBlue,
                //             fontSize: 16.sp,
                //           ),
                //         ),
                //         Text(
                //           'Date',
                //           style: TextStyle(
                //             fontFamily: 'bahnschrift',
                //             color: AppColors.darkBlue,
                //             fontSize: 16.sp,
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       width: screenWidth / 20,
                //     ),
                //     Expanded(
                //       child: Container(
                //         height: 40.h,
                //         color: AppColors.mediumBlue,
                //         child: Center(
                //           child: Text(
                //             branch_closing_date,
                //             style: TextStyle(
                //               fontFamily: 'bahnschrift',
                //               fontSize: 16.sp,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          const PricesListButtonForAdmin(),
          const DividerBetweenListElements(),
          const TripDriverDateRow(),
          const SpaceItem(),
          Expanded(

            child: BlocConsumer<GetTypePriceListPaginatedCubit,
                PaginationStateTest<dataItemPriceList>>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => Center(child: CupertinoActivityIndicator()),
                  orElse: () => Center(child: Text('No prices available')),
                  success: (data, canLoadMore) {
                    return SmartRefresher(
                      enablePullDown: true,
                      controller: _refreshController,
                      onRefresh: () => cubit.emitGetTypesPriceList(),
                      onLoading: () => cubit.emitGetTypesPriceList(loadMore: true),
                      enablePullUp: canLoadMore != 0,
                      child: Expanded(

                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        data[index].id.toString(),
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          data[index].cost.toString(),
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          data[index].createdAt.toString(),
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
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SpaceItem(),
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
          ),
        ],
      ),
    );
  }
}
