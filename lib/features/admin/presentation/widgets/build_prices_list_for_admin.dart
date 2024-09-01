import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_prices_List_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_prices_list_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/price_row_item_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global/base_entity.dart';

class buildPricesListForAdmin extends StatefulWidget {
  const buildPricesListForAdmin({super.key});

  @override
  State<buildPricesListForAdmin> createState() =>
      _buildPricesListForAdminState();
}


class _buildPricesListForAdminState extends State<buildPricesListForAdmin> {
  @override
  late GetTypePriceListPaginatedCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTypePriceListPaginatedCubit>();
    cubit.emitGetTypesPriceList();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<GetTypePriceListPaginatedCubit,
        PaginationStateTest<dataItemPriceList>>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(child: CupertinoActivityIndicator()),
          orElse: () => Center(child: Text('No employees available')),
          success: (data, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetTypesPriceList(),
              onLoading: () =>
                  cubit.emitGetTypesPriceList(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    // TextEditingController editedPriceController =
                    // TextEditingController(
                    //     text: data[index].cost.toString());
                    // TextEditingController editedWeightController =
                    // TextEditingController(text: data[index].type);
                    // String editedPrice = '';
                    // String editedWeight = '';

                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              data[index].type.toString(),
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.yellow,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].id.toString(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.darkBlue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.darkBlue,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].cost.toString(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'bahnschrift',
                                    color: AppColors.pureWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: SizedBox(
                          //     height: 40.h,
                          //     child: FloatingActionButton(
                          //       onPressed: () {
                          //         showDialog(
                          //           context: context,
                          //           builder: (BuildContext context) {
                          //             return AlertDialog(
                          //               title: const Text(
                          //                 'Edit Price ',
                          //                 style: TextStyle(
                          //                   fontFamily: 'Bauhaus',
                          //                   color: AppColors.yellow,
                          //                 ),
                          //               ),
                          //               content: Column(
                          //                 children: [
                          //                   TextField(
                          //                     controller: editedWeightController,
                          //                     onChanged: (value) {
                          //                       editedWeight = value;
                          //                     },
                          //                     decoration: const InputDecoration(
                          //                       prefixIcon: Icon(
                          //                         Icons.monitor_weight_outlined,
                          //                         color: AppColors.darkBlue,
                          //                       ),
                          //                     ),
                          //                   ),
                          //                   SizedBox(
                          //                     height: 20.h,
                          //                   ),
                          //                   TextField(
                          //                     controller: editedPriceController,
                          //                     onChanged: (value) {
                          //                       editedPrice = value;
                          //                     },
                          //                     decoration: const InputDecoration(
                          //                       prefixIcon: Icon(
                          //                         Icons.price_change_outlined,
                          //                         color: AppColors.darkBlue,
                          //                       ),
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               actions: [
                          //                 BlocConsumer<EditShippingCostCubit,
                          //                     PostState<BaseEntity>>(
                          //                   builder: (context, state) {
                          //                     return state.maybeWhen(
                          //                       idle: () {
                          //                         return FloatingActionButton(
                          //                           backgroundColor:
                          //                           AppColors.darkBlue,
                          //                           child: const Text(
                          //                             'Save',
                          //                             style: TextStyle(
                          //                               color:
                          //                               AppColors.pureWhite,
                          //                               fontFamily: 'bahnschrift',
                          //                             ),
                          //                           ),
                          //                           onPressed: () {
                          //                             context
                          //                                 .read<
                          //                                 EditShippingCostCubit>()
                          //                                 .emitEditShippingCost(
                          //                               editShippingCostParams:
                          //                               ShippingCostParams(
                          //                                 cost: editedPriceController
                          //                                     .text,
                          //                                 type: editedWeightController
                          //                                     .text,
                          //                               ),
                          //                             );
                          //                             Navigator.of(context)
                          //                                 .pop();
                          //                           },
                          //                         );
                          //                       },
                          //                       orElse: () {
                          //                         return FloatingActionButton(
                          //                           backgroundColor:
                          //                           AppColors.darkBlue,
                          //                           child: const Text(
                          //                             'Save',
                          //                             style: TextStyle(
                          //                               color:
                          //                               AppColors.pureWhite,
                          //                               fontFamily: 'bahnschrift',
                          //                             ),
                          //                           ),
                          //                           onPressed: () {
                          //                             Navigator.of(context)
                          //                                 .pop();
                          //                           },
                          //                         );
                          //                       },
                          //                       loading: () {
                          //                         return const Center(
                          //                           child:
                          //                           CircularProgressIndicator(),
                          //                         );
                          //                       },
                          //                     );
                          //                   },
                          //                   listener: (context, state) {
                          //                     state.whenOrNull(
                          //                       success: (_) {
                          //                         Fluttertoast.showToast(
                          //                           msg: "edit it  successfully!",
                          //                           toastLength:
                          //                           Toast.LENGTH_SHORT,
                          //                         );
                          //                       },
                          //                       error: (exception) {
                          //                         Fluttertoast.showToast(
                          //                           msg: NetworkExceptions
                          //                               .getErrorMessage(
                          //                               exception),
                          //                           toastLength:
                          //                           Toast.LENGTH_SHORT,
                          //                         );
                          //                       },
                          //                     );
                          //                   },
                          //                 ),
                          //               ],
                          //             );
                          //           },
                          //         );
                          //       },
                          //       shape: const CircleBorder(),
                          //       backgroundColor: AppColors.lightBlue,
                          //       elevation: 0.0,
                          //       child: const Icon(
                          //         Icons.edit,
                          //         color: AppColors.darkBlue,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
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
        );
      },

    );
  }

}