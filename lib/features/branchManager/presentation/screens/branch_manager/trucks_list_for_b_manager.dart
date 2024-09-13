import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/delete_truck_cubit.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_all_trucks_by_branch_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_trucks_by_branch_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/delete_truck_bm_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/edit_truck_screen.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_truck_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/trucks_list_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/error/network_exceptions.dart';
import '../../widget/build_trucks_list_for_b_manager.dart';
import '../../widget/divider_item.dart';
import 'add_truck_screen.dart';

class TrucksListForB_Manager extends StatefulWidget {
  @override
  State<TrucksListForB_Manager> createState() => _TrucksListForB_ManagerState();
}

class _TrucksListForB_ManagerState extends State<TrucksListForB_Manager> {
  List imgList = [
    'assets/images/truck.png',
    'assets/images/box1.png',
    'assets/images/truck2.png',
    'assets/images/box.png',
  ];

  late GetAllTrucksByBranchCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetAllTrucksByBranchCubit>();
    cubit.emitGetAllTrucksByBranch();
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          CarouselSlider(
            items: imgList.map((imageurl) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Image.asset(
                  imageurl,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 220.h,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              scrollDirection: Axis.vertical,
            ),
          ),
          SpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.fire_truck,
                  color: AppColors.darkBlue,
                ),
                Text(
                  '- - - - - - - ',
                  style: TextStyle(
                    fontFamily: 'Bauhaus',
                    fontSize: 17.0.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddTruckScreen()));
                  },
                  child: Text(
                    'Add Truck',
                    style: TextStyle(
                      fontFamily: 'Bauhaus',
                      fontSize: 20.0.sp,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
                Text(
                  '- - - - - - - ',
                  style: TextStyle(
                    fontFamily: 'Bauhaus',
                    fontSize: 17.0.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14),
                  child: Icon(
                    Icons.fire_truck,
                    color: AppColors.darkBlue,
                  ),
                ),
              ],
            ),
          ),
          DividerSpaceItem(),
          BlocConsumer<GetAllTrucksByBranchCubit,
              GetState<GetAllTrucksByBranchEntity>>(
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
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(child: Text("No data available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0.w, vertical: 10.0.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${data.data[index].line}',
                                    style: TextStyle(
                                      color: AppColors.darkBlue,
                                      fontFamily: 'bahnschrift',
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  Text(
                                    '${data.data[index].number}',
                                    style: TextStyle(
                                      color: AppColors.darkBlue,
                                      fontFamily: 'bahnschrift',
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ViewTruckForB_Manager(
                                                  truck_create: data
                                                      .data[index].createdBy,
                                                  truck_editing_date: data
                                                      .data[index].editingDate
                                                      .toString(),
                                                  truck_id: data.data[index].id
                                                      .toString(),
                                                  truck_last_edit: data
                                                      .data[index].editingBy
                                                      .toString(),
                                                  truck_line:
                                                      data.data[index].line,
                                                )),
                                      );
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => EditTruckScreen(
                                              //     truck_id: data.data[index].id.toString()و
                                              ),
                                        ),
                                      );
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
                                        builder: (context) => AlertDialog(
                                          title: Text(
                                            "do you want to delete this truck ?",
                                            style: TextStyle(
                                              fontFamily: 'bahnschrift',
                                              color: AppColors.darkBlue,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          content: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  print(
                                                      "Delete driver button pressed");
                                                  context
                                                      .read<
                                                      DeleteTruckCubit>()
                                                      .emitDeleteTruck(
                                                    deleteTruckParams:
                                                    DeleteTrukBMParams(
                                                        truck_id: data.data[index].id.toString()),
                                                  );
                                                },
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
                                                onPressed: () {
                                                  Navigator.of(
                                                      context)
                                                      .pop();
                                                },
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
                      itemCount: data.data.length,
                    ),
                  );
                },
              );
            },
          ),

          // Container(
          //   width: double.infinity,
          //   child: FloatingActionButton(
          //     onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder:(context)=>AddTruckScreen()));
          //     },
          //     child: Text(
          //       'Add Truck',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         fontWeight: FontWeight.bold,
          //         fontSize: 17.0.sp,
          //         color: AppColors.mediumBlue,
          //       ),
          //     ),
          //     backgroundColor: AppColors.darkBlue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(37.r),
          //         topLeft: Radius.circular(37.r),
          //       ),
          //     ),
          //   ),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(37.r),
          //       topLeft: Radius.circular(37.r),
          //     ),
          //     color: AppColors.darkBlue,
          //   ),
          // ),
        ],
      ),
    );
  }
}
