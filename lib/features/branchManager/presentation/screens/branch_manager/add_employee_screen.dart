import '../../../presentation/widget/add_employee_text.dart';
import '../../../presentation/widget/enter_emplyee_information.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';

class AddEmployeeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddEmployeeText(),
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
          SpaceItem(),
          Expanded(
              child: EnterEmployeeInformation(),
          ),
          AddEmployeeButton(),
        ],
      ),
    );
  }

  Widget AddEmployeeButton() => Container(
    width: double.infinity,
    child: FloatingActionButton(
      onPressed: (){

      },
      child: Text(
        'Add',
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
      borderRadius: BorderRadius.circular(37.r),
      color: AppColors.darkBlue,
    ),
  );

}