import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_truck_pagination_cubit.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_truck_for_b_manager.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../data/entity/get_all_record_entity_pagination.dart';
import '../../../presentation/widget/build_trucks_list_for_b_manager.dart';
import '../../../presentation/widget/divider_between_list_elements.dart';
import '../../../presentation/widget/search_in_trucks_list_for_b_manager.dart';
import '../../../presentation/widget/trucks_list_text.dart';
import '../../../presentation/widget/trucks_list_text_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';
import 'add_truck_screen.dart';
import 'edit_truck_screen.dart';

class TrucksListForB_Manager extends StatefulWidget {
  @override
  State<TrucksListForB_Manager> createState() => _TrucksListForB_ManagerState();
}

class _TrucksListForB_ManagerState extends State<TrucksListForB_Manager> {
  late GetAllTruckRecordPaginatedCubit cubit;
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllTruckRecordPaginatedCubit>();
    cubit.emitGetAllTruckRecords();
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TrucksListText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          TrucksListTextIntro(),
          DividerBetweenListElements(),
          SearchInTrucksListForB_Manager(),
          SizedBox(
            height: screenHeight / 75,
          ),
          DividerItem(),
          Expanded(
            child: BlocConsumer<GetAllTruckRecordPaginatedCubit , PaginationStateTest<TruckRecordPaginatedEntity>>(


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
                      onRefresh: () => cubit.emitGetAllTruckRecords(),
                      onLoading: () => cubit.emitGetAllTruckRecords(loadMore: true),
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0.w, vertical: 10.0.h),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      data[index].line,
                                      style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontFamily: 'bahnschrift',
                                        fontSize: 17.sp,
                                      ),
                                    ),
                                    Text(
                                     data[index].number.toString(),
                                      style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontFamily: 'bahnschrift',
                                        fontSize: 17.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) =>
                                                ViewTruckForB_Manager(
                                                  truck_create:data[index].createdBy,
                                                  truck_id:data[index].id.toString() ,
                                                  truck_last_edit: data[index].editingBy.toString(),
                                                  truck_line:data[index].line ,
                                                  truck_editing_date: data[index].editingDate.toString(),
                                                )));
                                      },
                                      child: Text(
                                        'view',
                                        style: TextStyle(
                                          color: AppColors.yellow,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => EditTruckScreen()));
                                      },
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: AppColors.yellow,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                              AlertDialog(
                                                title: Text(
                                                  "do you want to delete this truck ?",
                                                  style: TextStyle(
                                                    fontFamily: 'bahnschrift',
                                                    color: AppColors.darkBlue,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                content: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceAround,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Text(
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
                                                      child: Text(
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
                                        ;
                                      },
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: AppColors.yellow,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ],
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
          Container(
            width: double.infinity,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddTruckScreen()));
              },
              child: Text(
                'Add Truck',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: AppColors.mediumBlue,
                ),
              ),
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(37.r),
                topLeft: Radius.circular(37.r),
              ),
              color: AppColors.darkBlue,
            ),
          ),

        ],
      ),);
  }
}