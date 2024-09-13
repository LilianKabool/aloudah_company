import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/update_branch_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_branches_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/update_branch_cubit.dart';
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


class BranchDropdown extends StatefulWidget {
  final ValueChanged<GetAllBranchesPaginatedEntity?> onChanged;
  final GetAllBranchesPaginatedEntity? selectedValue;

  const BranchDropdown({super.key, 
    required this.onChanged,
    required this.selectedValue,
  });

  @override
  _BranchDropdownState createState() => _BranchDropdownState();
}

class _BranchDropdownState extends State<BranchDropdown> {
  late GetAllBranchesPaginatedCubit cubit;
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

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
              widget.selectedValue == null ? 'Select Branch' : widget.selectedValue!.branchDesk,
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

class EditBranchScreen extends StatefulWidget {

  final _branchAddressController = TextEditingController();
  final _branchPhoneController = TextEditingController();
  final _branchNameController = TextEditingController();
  final _branchPhoneNumberController = TextEditingController();

  EditBranchScreen({super.key});

  @override
  State<EditBranchScreen> createState() => _EditBranchScreenState();
}

class _EditBranchScreenState extends State<EditBranchScreen> {

  GetAllBranchesPaginatedEntity? selectedBranch;
  late GetAllBranchesPaginatedCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllBranchesPaginatedCubit>();
    cubit.emitGetAllBranches();
    selectedBranch = selectedBranch;
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

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
      ),
      body: ListView(
        children: [
          Row(
            children: [
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

                    }
                    );
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
                  controller: widget._branchAddressController,
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
                  controller: widget._branchPhoneNumberController,
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
                'phone',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 5.8,
              ),
              Expanded(
                child: TextFormField(
                  controller: widget._branchPhoneController,
                  keyboardType: TextInputType.number,
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
                  controller: widget._branchNameController,
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
          BlocConsumer<UpdateBranchCubit, PostState<BaseEntity>>(
            builder: (context, state) {
              return state.maybeWhen(
                idle: (){
                  return  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColors.darkBlue,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        context
                            .read<UpdateBranchCubit>()
                            .emitUpdateBranch(
                          updateBranchParams: UpdateBranchParams(
                            branchId:selectedBranch?.branchId.toString(),
                            phone:widget._branchPhoneController.text,
                            address:widget._branchAddressController.text,
                            name:widget._branchNameController.text,
                            phoneNumber:widget._branchPhoneNumberController.text,),
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
                            .read<UpdateBranchCubit>()
                            .emitUpdateBranch(
                            updateBranchParams: UpdateBranchParams(
                              branchId:selectedBranch?.branchId.toString(),
                              phone:widget._branchPhoneController.text,
                              address:widget._branchAddressController.text,
                              name:widget._branchNameController.text,
                              phoneNumber:widget._branchPhoneNumberController.text,),
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
    );
  }
}