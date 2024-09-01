import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_customer_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_customers_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_customer_paginated_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/customer_view_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';
import 'divider_item.dart';

class BuildCustomersListForAdmin extends StatefulWidget{
  const BuildCustomersListForAdmin({super.key});

  @override
  State<BuildCustomersListForAdmin> createState() => _BuildCustomersListForAdminState();
}

class _BuildCustomersListForAdminState extends State<BuildCustomersListForAdmin> {
  late GetAllCustomersPaginatedCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllCustomersPaginatedCubit>();
    cubit.emitGetAllCustomers();
  }
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllCustomersPaginatedCubit , PaginationStateTest<customerEntity>>(
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
          loading: () =>
          const Center(child: CupertinoActivityIndicator()),
          orElse: () =>
          const Center(child: Text('No Branches available')),
          success: (customers, canLoadMore) {
            return SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: () => cubit.emitGetAllCustomers(),
              onLoading: () =>
                  cubit.emitGetAllCustomers(loadMore: true),
              enablePullUp: canLoadMore != 0,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  customerEntity customer = customers[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            customer.name!,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Container(
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomersViewForAdmin(
                                customer_name : customer.name!,
                                customer_id :customer.id,
                               customer_phone : customer.phoneNumber,
                                customer_address : customer.address!,
                                customer_address_details : customer.addressDetail!,
                                customer_notes : customer.notes,
                                customer_mobile : customer.mobile,


                              )));
                            },
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: AppColors.darkBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const DividerItem(),
                itemCount: customers.length,
              ),
            );
          },
        );
      },

    );
  }
}