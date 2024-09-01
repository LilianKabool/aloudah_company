import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_prices_list_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/MapScreen.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/add_warehouse_screen.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/add_branch_manager_screen.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../data/params/get_prices_List_params.dart';
import '../widgets/add_branch_information.dart';
import '../widgets/add_branch_text.dart';
import '../widgets/divider_item.dart';
import '../widgets/enter_branch_goods.dart';
import '../widgets/space_item.dart';

class AddBranchScreen extends StatefulWidget {
  AddBranchScreen({super.key});

  @override
  State<AddBranchScreen> createState() => _AddBranchScreenState();
}

class _AddBranchScreenState extends State<AddBranchScreen> {
  GetAllBranchesPaginatedEntity? branchesPaginatedEntity;

  final TextEditingController good = TextEditingController();

  final TextEditingController nationalID = TextEditingController();

  final TextEditingController branchId = TextEditingController();

  final TextEditingController wieght = TextEditingController();

  final TextEditingController price = TextEditingController();

  final TextEditingController address = TextEditingController();

  final TextEditingController desk = TextEditingController();

  final TextEditingController phone = TextEditingController();

  final TextEditingController managerName = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController motherName = TextEditingController();

  final TextEditingController gender = TextEditingController();

  final TextEditingController dateOfBirth = TextEditingController();

  final TextEditingController managerAddress = TextEditingController();

  final TextEditingController salary = TextEditingController();

  final TextEditingController rank = TextEditingController();

  final TextEditingController branch_lng = TextEditingController();

  final TextEditingController branch_lat = TextEditingController();

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
    return Scaffold(
      appBar: AppBar(
        title: const AddBranchText(),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  MapScreenForAdmin(desk: desk,
                      address: address,
                      phone: phone,
                      //heroTag: 'desk-textfield-map'
                    )
              ));
            },
            child: Text(
              'Next',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 17.sp,
              ),
            ),
          )
        ],
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
          Material(
            child: AddBranchInformation(
                desk: desk, address: address, mobile: phone),
          ),
          const SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        bottomLeft: Radius.circular(5.r),
                      ),
                      //color: AppColors.yellow,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddBranchManager(
                              branchId,
                            ),
                          ),
                        );
                      },
                      backgroundColor: AppColors.yellow,
                      heroTag: 'addManagerButton',
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          bottomLeft: Radius.circular(5.r),
                        ),
                      ),
                      elevation: 0.0,
                      child: Text(
                        'Add Manager',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r),
                      ),
                      //color: AppColors.yellow,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddWarehouseScreen()));
                      },
                      backgroundColor: AppColors.darkBlue,
                      heroTag: 'addWarehouseButton',
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.r),
                          bottomRight: Radius.circular(5.r),
                        ),
                      ),
                      elevation: 0.0,
                      child: Text(
                        'Add Warehouse',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.mediumBlue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SpaceItem(),
          const DividerItem(),
          EnterBranchGoods(),
          const SpaceItem(),
          const DividerItem(),
          const SpaceItem(),
          const SpaceItem(),
          Expanded(
              child: BlocConsumer<GetTypePriceListPaginatedCubit,
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
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        //      AllDataForPriceList pricesListEntity = data.data[index] ;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  data[index].id.toString(),
                                  style: TextStyle(
                                    color: AppColors.pureBlack,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data[index].type.toString(),
                                  style: TextStyle(
                                    color: AppColors.pureBlack,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
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
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SpaceItem(),
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
              );
            },
          )),
        ],
      ),
    );
  }

  Widget TableHeader() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Good',
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
                'Type',
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
                'Cost',
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
      );
}
