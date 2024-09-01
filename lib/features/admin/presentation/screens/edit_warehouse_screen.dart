import 'package:aloudeh_company/features/admin/data/entity/warehouses_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/delete_warehouse_params.dart';
import 'package:aloudeh_company/features/admin/data/params/params/update_warehouse_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/delete_warehouse_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_warehouses_paginated_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/update_warehouse_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global/base_entity.dart';
import '../../../../core/global_states/post_state.dart';
import '../../../employee/presentation/screens/pagination_state_test.dart';
import '../widgets/branch_information_text.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';

class WarehouseDropdown extends StatefulWidget {
  _deleteBranch(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "do you want to delete this branch ?",
          style: TextStyle(
            fontFamily: 'bahnschrift',
            color: AppColors.darkBlue,
            fontSize: 16.sp,
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: AppColors.yellow,
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'No',
                style: TextStyle(
                  color: AppColors.yellow,
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final ValueChanged<WarehousesPaginatedEntity?> onChanged;
  final WarehousesPaginatedEntity? selectedValue;

  const WarehouseDropdown({super.key, 
    required this.onChanged,
    required this.selectedValue,
  });

  @override
  _WarehouseDropdownState createState() => _WarehouseDropdownState();
}

class _WarehouseDropdownState extends State<WarehouseDropdown> {
  late GetAllWarehousePaginatedCubit cubit;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllWarehousePaginatedCubit>();
    cubit.emitGetAllwarehouses();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _showDropdown(BuildContext context) {
    cubit.emitGetAllwarehouses();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: BlocConsumer<GetAllWarehousePaginatedCubit,
              PaginationStateTest<WarehousesPaginatedEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                error: (exception) {
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
                orElse: () => const Center(child: Text("No data available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data, canLoadMore) {
                  return SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: canLoadMore != 0,
                    controller: _refreshController,
                    onRefresh: () => cubit.emitGetAllwarehouses(),
                    onLoading: () => cubit.emitGetAllwarehouses(loadMore: true),
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        WarehousesPaginatedEntity warehouse = data[index];
                        return ListTile(
                          title: Text(warehouse.warehouseName),
                          onTap: () {
                            widget.onChanged(warehouse);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDropdown(context),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mediumBlue),
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.selectedValue == null
                  ? 'Select warehouse'
                  : widget.selectedValue!.warehouseName,
              style: const TextStyle(
                color: AppColors.darkBlue,
                fontSize: 16,
              ),
            ),
            const Icon(Icons.arrow_drop_down, color: AppColors.darkBlue),
          ],
        ),
      ),
    );
  }
}

class EditWarehouseScreen extends StatefulWidget {
  final _warehouseAddressController = TextEditingController();
  final _warehousehPhoneController = TextEditingController();
  final _managerAddressController = TextEditingController();
  final _warehouseNameController = TextEditingController();
  final _warehouseAreaController = TextEditingController();

  EditWarehouseScreen({super.key});

  @override
  State<EditWarehouseScreen> createState() => _EditWarehouseScreenState();
}

class _EditWarehouseScreenState extends State<EditWarehouseScreen> {
  WarehousesPaginatedEntity? selectedWarehouse;

  late GetAllWarehousePaginatedCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllWarehousePaginatedCubit>();
    cubit.emitGetAllwarehouses();
    selectedWarehouse = selectedWarehouse;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) =>
                    BlocConsumer<DeleteWarehouseCubit, PostState<BaseEntity>>(
                  listener: (ctx, state) {
                    state.whenOrNull(
                      success: (data) {
                        print("warehouse deleted successfully");
                        // context
                        //     .read<GetAllWarehousePaginatedCubit>()
                        //     .emitGetAllwarehouses();
                        // Navigator.pop(context);

                        // context.read<GetAllCustomersEmployeePaginatedCubit>().removeCustomer(customerId);
                        print("warehouse deleted successfully");
                        Navigator.pop(context);
                      },
                      error: (error) {
                        Fluttertoast.showToast(
                          msg: "Failed to delete warehouse",
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      },
                    );
                  },
                  builder: (ctx, state) {
                    return AlertDialog(
                      title: Text(
                        "do you want to delete this warehouse ?",
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              print("Delete warehouse button pressed");
                              context
                                  .read<DeleteWarehouseCubit>()
                                  .emitDeleteWarehouse(
                                    deleteWarehouseParams:
                                        DeleteWarehouseParams(
                                      warehouseId: selectedWarehouse!.id,
                                    ),
                                  );
                            },
                            child: const Text(
                              'Yes',
                              style: TextStyle(
                                color: AppColors.yellow,
                                fontFamily: 'bahnschrift',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'No',
                              style: TextStyle(
                                color: AppColors.yellow,
                                fontFamily: 'bahnschrift',
                                fontWeight: FontWeight.bold,
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'warehouse Name',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.pureWhite,
                    border: Border.all(color: AppColors.darkBlue),
                  ),
                  child: WarehouseDropdown(
                    selectedValue: selectedWarehouse,
                    onChanged: (value) {
                      setState(() {
                        selectedWarehouse = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'address',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 10.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller: widget._warehouseAddressController,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
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
                      'phone',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'number',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth / 14.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller: widget._warehousehPhoneController,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'name',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 17.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: widget._warehouseNameController,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'area',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 17.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: widget._warehouseAreaController,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'manager address',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 17.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: widget._managerAddressController,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            BlocConsumer<UpdateWarehouseCubit, PostState<BaseEntity>>(
              builder: (context, state) {
                return state.maybeWhen(
                  idle: () {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37.r),
                        color: AppColors.darkBlue,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          context
                              .read<UpdateWarehouseCubit>()
                              .emitUpdateWarehouse(
                                updateWarehouseParams: UpdateWarehouseParams(
                                  warehouseId: selectedWarehouse!.branchId,
                                  address:
                                      widget._warehouseAddressController.text,
                                  area: widget._warehouseAreaController.text,
                                  managerAddress:
                                      widget._managerAddressController.text,
                                  phone: widget._warehousehPhoneController.text,
                                  name: widget._warehouseNameController.text,
                                ),
                              );
                        },
                        backgroundColor: AppColors.darkBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(37.r),
                            topLeft: Radius.circular(37.r),
                          ),
                        ),
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0.sp,
                            color: AppColors.mediumBlue,
                          ),
                        ),
                      ),
                    );
                  },
                  orElse: () {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37.r),
                        color: AppColors.darkBlue,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {
                          context
                              .read<UpdateWarehouseCubit>()
                              .emitUpdateWarehouse(
                                updateWarehouseParams: UpdateWarehouseParams(
                                  warehouseId: selectedWarehouse!.branchId,
                                  address:
                                      widget._warehouseAddressController.text,
                                  area: widget._warehouseAreaController.text,
                                  managerAddress:
                                      widget._managerAddressController.text,
                                  phone: widget._warehousehPhoneController.text,
                                  name: widget._warehouseNameController.text,
                                ),
                              );
                        },
                        backgroundColor: AppColors.darkBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(37.r),
                            topLeft: Radius.circular(37.r),
                          ),
                        ),
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0.sp,
                            color: AppColors.mediumBlue,
                          ),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
              listener: (context, state) {
                state.whenOrNull(
                  success: (_) {
                    Fluttertoast.showToast(
                      msg: "edit it  successfully!",
                      toastLength: Toast.LENGTH_SHORT,
                    );
                  },
                  error: (exception) {
                    Fluttertoast.showToast(
                      msg: NetworkExceptions.getErrorMessage(exception),
                      toastLength: Toast.LENGTH_SHORT,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
