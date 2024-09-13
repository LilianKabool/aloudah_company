
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/branch_manager/edit_truck_screen.dart';
import '../screens/branch_manager/view_truck_for_b_manager.dart';

class TruckItemForB_Manager extends StatelessWidget {

  String TruckName = 'Aleppo';
  String TruckNumber = '32547896';



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${TruckName}',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.sp,
                ),
              ),
              Text(
                '${TruckNumber}',
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
                  // Navigator.push(context, MaterialPageRoute(builder:(context)
                  // =>
                  //     ViewTruckForB_Manager(
                  //       // truck_create:, truck_editing_date:,
                  //       // truck_id:,
                  //       // truck_last_edit: ,
                  //       // truck_line: ,
                  //     )),);
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
  }

}