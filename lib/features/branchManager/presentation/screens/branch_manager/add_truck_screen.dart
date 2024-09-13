import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/add_truck_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_truck_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../../../../core/error/network_exceptions.dart';
import '../../../../admin/presentation/widgets/logo_image_widget.dart';
import '../../../presentation/widget/divider_space_item.dart';
import '../../../presentation/widget/enter_new_truck_text.dart';
import '../../../presentation/widget/enter_notes_in_add_truck_screen.dart';
import '../../../presentation/widget/enter_truck_information.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/add_truck_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/enter_user_info_in_add_truck_screen.dart';

class AddTruckScreen extends StatefulWidget {
  var id = TextEditingController();
  var line = TextEditingController();
  var number = TextEditingController();
  @override
  State<AddTruckScreen> createState() => _AddTruckScreenState();
}

class _AddTruckScreenState extends State<AddTruckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AddTruckText(),
        centerTitle: true,
        actions: [
          BlocConsumer<AddTruckCubit, PostState<BaseEntity>>(
            builder: (context, state) {
              return state.maybeWhen(
                idle: () {
                  return TextButton(
                    onPressed: () {
                      context.read<AddTruckCubit>().emitAddTruck(
                          addTruckParams: AddTruckParams(branchId:widget.id.text, line:widget.line.text,
                            number:widget.number.text,));
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.sp,
                      ),
                    ),
                  );
                },
                orElse: () {
                  return TextButton(
                    onPressed: () {
                      context.read<AddTruckCubit>().emitAddTruck(
                          addTruckParams: AddTruckParams(branchId:widget.id.text, line:widget.line.text,
                            number:widget.number.text,));
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.sp,
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
                    msg: "add it  successfully!",
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
      body: ListView(
        children: [
          SpaceItem(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoImageWidget(),
                Text(
                  'Please Enter The New Truck',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerSpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Truck Information',
                  style: TextStyle(
                    color: AppColors.yellow,
                    fontSize: 17.sp,
                    fontFamily: 'bahnschrift',
                  ),
                ),
                SpaceItem(),
                Text(
                  'Truck ID',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                  ),
                ),
                Container(
                  height: 44.h,
                  child: TextFormField(
                    controller: widget.id,
                    cursorColor: AppColors.darkBlue,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
                SpaceItem(),
                Text(
                  'Truck Line',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                  ),
                ),
                Container(
                  height: 44.h,
                  child: TextFormField(
                    controller: widget.line,
                    cursorColor: AppColors.darkBlue,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
                SpaceItem(),
                Text(
                  'Truck number',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 16.sp,
                  ),
                ),
                Container(
                  height: 44.h,
                  child: TextFormField(
                    controller: widget.number,
                    cursorColor: AppColors.darkBlue,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          // DividerSpaceItem(),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'User Information',
          //         style: TextStyle(
          //           color: AppColors.yellow,
          //           fontSize: 17.sp,
          //           fontFamily: 'bahnschrift',
          //         ),
          //       ),
          //       SpaceItem(),
          //       Text(
          //         'Create',
          //         style: TextStyle(
          //           color: AppColors.darkBlue,
          //           fontFamily: 'bahnschrift',
          //           fontSize: 16.sp,
          //         ),
          //       ),
          //       Container(
          //         height: 44.h,
          //         width: double.infinity,
          //         padding: EdgeInsets.symmetric(
          //             horizontal: 10.0.w, vertical: 13.0.h),
          //         color: AppColors.mediumBlue,
          //         child: Text(
          //           '${widget.creator_name}',
          //           style: TextStyle(
          //             fontFamily: 'bahnschrift',
          //             fontSize: 16.sp,
          //           ),
          //         ),
          //       ),
          //       SpaceItem(),
          //       Text(
          //         'Date Added',
          //         style: TextStyle(
          //           color: AppColors.darkBlue,
          //           fontFamily: 'bahnschrift',
          //           fontSize: 16.sp,
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () {
          //           showDatePicker(
          //             context: context,
          //             initialDate: widget.selectedDate,
          //             firstDate: DateTime(2018),
          //             lastDate: DateTime(2100),
          //           ).then((value) {
          //             if (value == null) {
          //               return;
          //             }
          //             setState(() {
          //               widget.selectedDate = value;
          //               widget.date_added = DateFormat('yyyy-MM-dd').format(
          //                   widget.selectedDate);
          //               widget.showDate = true;
          //             });
          //           });
          //         },
          //         child: Container(
          //           height: 44.h,
          //           width: double.infinity,
          //           color: AppColors.mediumBlue,
          //           padding: EdgeInsets.symmetric(
          //               horizontal: 10.0.w, vertical: 13.0.h),
          //           child: widget.showDate
          //               ? Text(
          //             DateFormat('yyyy-MM-dd')
          //                 .format(widget.selectedDate),
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           )
          //               : Text(
          //             ' ',
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // DividerSpaceItem(),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Notes',
          //         style: TextStyle(
          //           fontFamily: 'bahnschrift',
          //           color: AppColors.yellow,
          //           fontSize: 17.sp,
          //         ),
          //       ),
          //       Container(
          //         height: 100.h,
          //         color: AppColors.mediumBlue,
          //         child: TextFormField(
          //           controller: widget.notes,
          //           cursorColor: AppColors.darkBlue,
          //           style: TextStyle(
          //               overflow: TextOverflow.ellipsis
          //           ),
          //           maxLines: 5,
          //           decoration: InputDecoration(
          //             filled: true,
          //             fillColor: AppColors.mediumBlue,
          //             border: InputBorder.none,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SpaceItem(),
        ],
      ),
    );
  }
}