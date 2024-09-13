
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_customers_for_bm_cubit.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_customer_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_between_list_elements.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/logo_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../employee/presentation/screens/pagination_state_test.dart';
import '../../../data/entity/get_all_customers_entity.dart';
import '../../widget/customers_list_text.dart';
import '../../widget/divider_item.dart';

class CustomersListForB_Manager extends StatefulWidget{

  @override
  State<CustomersListForB_Manager > createState() => _CustomersListForB_ManagerState();
}

class _CustomersListForB_ManagerState extends State<CustomersListForB_Manager > {

  String customerName = 'Seba Taleaa';

  // Widget CustomerItemForB_Manager() => Padding(
  //   padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
  //   child: Row(
  //     children: [
  //       Expanded(
  //         child: Text(
  //           '${customerName}',
  //           style: TextStyle(
  //             fontFamily: 'bahnschrift',
  //             fontWeight: FontWeight.bold,
  //             color: AppColors.darkBlue,
  //             fontSize: 16.sp,
  //           ),
  //         ),
  //       ),
  //       Container(
  //         height: 35.h,
  //         decoration: BoxDecoration(
  //           color: AppColors.yellow,
  //           borderRadius: BorderRadius.circular(40.r),
  //         ),
  //         child: IconButton(
  //           onPressed: (){
  //             Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewCustomerForB_Manager()));
  //           },
  //           icon: Icon(
  //             Icons.remove_red_eye,
  //             color: AppColors.darkBlue,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );





  late GetAllCustomersForBMCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllCustomersForBMCubit>();
    cubit.emitGetAllCustomersBM();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Align(
      //     alignment: Alignment.centerRight,
      //     child: CustomersListText(),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.chevron_left,
      //       color: AppColors.darkBlue,
      //     ),
      //   ),
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(1.0),
      //     child: DividerItem(),
      //   ),
      // ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     SizedBox(
      //       height: screenHeight/75,
      //     ),
      //     CustomersListTextIntro(),
      //     // DividerBetweenListElements(),
      //     // SearchInCustomersListForB_Manager(),
      //     DividerBetweenListElements(),
      //     Expanded(
      //       child: BuildCustomersListForB_Manager(),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/8.33,
                    decoration: BoxDecoration(
                      color: AppColors.pureWhite,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/8.33,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LogoImageWidget(),
                        CustomersListText(),
                        LogoImageWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.2,
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.1995,
                  decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 10.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sports_handball,
                              color: AppColors.darkBlue,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Welcome In Customers List',
                              style: TextStyle(
                                color:  AppColors.yellow,
                                fontFamily: 'Bauhaus',
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DividerBetweenListElements(),
                      Expanded(
                        child: BlocConsumer<GetAllCustomersForBMCubit , PaginationStateTest<Customer>>(
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
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () => Center(child: CupertinoActivityIndicator()),
                              orElse: () => Center(child: Text('No Customers available')),
                              success: (data, canLoadMore) {
                                return SmartRefresher(
                                  enablePullDown: true,
                                  controller: _refreshController,
                                  onRefresh: () => cubit.emitGetAllCustomersBM(),
                                  onLoading: () => cubit.emitGetAllCustomersBM(loadMore: true),
                                  enablePullUp: canLoadMore != 0,
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      Customer customer = data[index];
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.person_pin_outlined,
                                              color: AppColors.yellow,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Expanded(
                                              child: Text(
                                                '${customer.name}',
                                                style: TextStyle(
                                                  fontFamily: 'bahnschrift',
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBlue,
                                                  fontSize: 16.sp,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: -3,
                                              child: Icon(
                                                Icons.touch_app,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewCustomerForB_Manager(
                                                  customer_address: customer.address,
                                                  customer_address_details: customer.addressDetail,
                                                  customer_id: customer.id.toString(),
                                                  customer_mobile: customer.mobile.toString(),
                                                  customer_name: customer.name,
                                                  customer_notes: customer.notes,
                                                  customer_phone: customer.phoneNumber.toString(),

                                                )));
                                              },
                                              child: Text(
                                                'View',
                                                style: TextStyle(
                                                  color: AppColors.yellow,
                                                  fontFamily: 'Bauhaus',
                                                  fontSize: 16.sp,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) => DividerItem(),
                                    itemCount: data.length,
                                  ),
                                );
                              },
                            );
                          },

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Widget SearchInCustomersListForB_Manager() => Container(
//   height: 50.h,
//   margin: EdgeInsets.symmetric(horizontal: 20.0),
//   child: TextFormField(
//     cursorColor: AppColors.darkBlue,
//     decoration: InputDecoration(
//       isDense: true,
//       filled: true,
//       fillColor: AppColors.lightBlue,
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10.r),
//         borderSide: BorderSide(
//           color: AppColors.darkBlue,
//         ),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10.r),
//         borderSide: BorderSide(
//           color: AppColors.darkBlue,
//         ),
//       ),
//       prefixIcon: Icon(
//         Icons.search,
//         color: AppColors.darkBlue,
//       ),
//       hintText: 'Search',
//       hintStyle: TextStyle(
//         color: AppColors.darkBlue,
//         fontFamily: 'bahnschrift',
//       ),
//     ),
//   ),
// );
}