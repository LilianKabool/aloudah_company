import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/add_warehouse_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/add_warehouse_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_branches_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/add_employee_screen.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/add_warehouse_manager_screen.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/divider_between_list_elements.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/divider_item.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/space_item.dart';

Widget buildTextField({
  required String label,
  required TextEditingController controller,
}) {
  return Column(
    children: [
      Text(
        label,
        style: TextStyle(
          color: AppColors.darkBlue,
          fontFamily: 'bahnschrift',
          fontSize: 16.sp,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 44.h,
        child: TextFormField(
          controller: controller,
          cursorColor: AppColors.darkBlue,
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: AppColors.pureWhite,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.darkBlue),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.darkBlue),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'This field must not be empty';
            }
            return null;
          },
        ),
      ),
      const SpaceItem(),
    ],
  );
}

class BranchDropdown extends StatefulWidget {
  final ValueChanged<GetAllBranchesPaginatedEntity?> onChanged;
  final GetAllBranchesPaginatedEntity? selectedValue;

  const BranchDropdown({
    super.key,
    required this.onChanged,
    required this.selectedValue,
  });

  @override
  _BranchDropdownState createState() => _BranchDropdownState();
}

class _BranchDropdownState extends State<BranchDropdown> {
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
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _showDropdown(BuildContext context) {
    cubit.emitGetAllBranches();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: BlocConsumer<GetAllBranchesPaginatedCubit,
              PaginationStateTest<GetAllBranchesPaginatedEntity>>(
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
                    onRefresh: () => cubit.emitGetAllBranches(),
                    onLoading: () => cubit.emitGetAllBranches(loadMore: true),
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        GetAllBranchesPaginatedEntity branch = data[index];
                        return ListTile(
                          title: Text(branch.branchDesk),
                          onTap: () {
                            widget.onChanged(branch);
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
                  ? 'Select Branch'
                  : widget.selectedValue!.branchDesk,
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

class AddWarehouseScreen extends StatefulWidget {
  const AddWarehouseScreen({super.key});

  @override
  State<AddWarehouseScreen> createState() => _AddWarehouseScreenState();
}

class _AddWarehouseScreenState extends State<AddWarehouseScreen> {
  GetAllBranchesPaginatedEntity? selectedBranch;
  late GetAllBranchesPaginatedCubit cubit;
  var warehouse_name = TextEditingController();
  var warehouse_location = TextEditingController();
  var notes = TextEditingController();
  var area = TextEditingController();

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllBranchesPaginatedCubit>();
    cubit.emitGetAllBranches();
    selectedBranch = selectedBranch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ad',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontFamily: 'ScriptMT',
                    color: AppColors.yellow,
                  ),
                ),
                TextSpan(
                  text: 'd Wareh',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontFamily: 'ScriptMT',
                    color: AppColors.darkBlue,
                  ),
                ),
                TextSpan(
                  text: 'ous',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontFamily: 'ScriptMT',
                    color: AppColors.yellow,
                  ),
                ),
              ],
            ),
          ),
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
      ),
      body: Column(
        children: [
          const SpaceItem(),
          Text(
            'Please Fill This Field',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const DividerBetweenListElements(),
          const SpaceItem(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 70.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.lightBlue,
                ),
                child: ListView(
                  children: <Widget>[
                    buildTextField(
                      label: 'Area',
                      controller: area,
                    ),
                    buildTextField(
                      label: 'Warehouse Name',
                      controller: warehouse_name,
                    ),
                    buildTextField(
                      label: 'Location',
                      controller: warehouse_location,
                    ),
                    buildTextField(
                      label: 'Notes',
                      controller: notes,
                    ),
                    Text(
                      'Branch Name',
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
                      child: BranchDropdown(
                        selectedValue: selectedBranch,
                        onChanged: (value) {
                          setState(() {
                            selectedBranch = value;
                            print(selectedBranch?.branchId);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SpaceItem(),
          const SpaceItem(),
          BlocConsumer<AddWarehouseCubit, PostState<BaseEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                success: (_) {
                  Fluttertoast.showToast(
                    msg: "Warehouse added successfully!",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                  _showOption(context, selectedBranch?.branchId.toString());
                },
                error: (exception) {
                  Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(exception),
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () =>
                    const Center(child: CupertinoActivityIndicator()),
                orElse: () => Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(37.r),
                    color: AppColors.darkBlue,
                  ),
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<AddWarehouseCubit>().emitAddWareHouse(
                            addWarehouseParams: AddWarehouseParams(
                              warehouseAddress: warehouse_location.text,
                              branchId: selectedBranch?.branchId.toString(),
                              // Safe navigation to access branchId
                              warehouseName: warehouse_name.text,
                              area: area.text,
                              notes: notes.text,
                            ),
                          );
                      print(selectedBranch?.branchId);
                    },
                    backgroundColor: AppColors.darkBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(37.r),
                        topLeft: Radius.circular(37.r),
                      ),
                    ),
                    child: Text(
                      'Add Warehouse ',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0.sp,
                        color: AppColors.mediumBlue,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

_showOption(BuildContext context, branchId) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.darkBlue,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddWarehouseManager()));
                },
                backgroundColor: AppColors.darkBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'New Manager',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    fontSize: 17.0.sp,
                    color: AppColors.mediumBlue,
                  ),
                ),
              ),
            ),
            const SpaceItem(),
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.yellow,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          AddEmployeeScreen(branchId: branchId.toString())));
                },
                backgroundColor: AppColors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'Employee',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    fontSize: 17.0.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
