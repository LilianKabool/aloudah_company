import '../../../presentation/screens/branch_manager/add_driver_screen.dart';
import '../../../presentation/widget/build_drivers_list_b_manager.dart';
import '../../../presentation/widget/search_driver_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';

import '../../widget/space_item.dart';

class DriversListForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        SearchDriverButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildDriversListB_Manager(),
        ),
        Container(
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AddDriverScreen()));
            },
            child: Text(
              'Add Driver',
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
    );
  }

}