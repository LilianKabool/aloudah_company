
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'divider_item.dart';
import 'edit_employee_information.dart';
import 'edit_screens_text_intro.dart';
import 'employee_information_text.dart';

class EditEmployeeB_Manager extends StatelessWidget{
  const EditEmployeeB_Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
        ),
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
          const SpaceItem(),
          const EditScreensTextIntro(),
          const SpaceItem(),
          const DividerItem(),
          const SpaceItem(),
          const Expanded(
              child: EditEmployeeInformation(),
          ),
          SaveButton(),
        ],
      ),
    );
  }

  Widget SaveButton() => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(37.r),
      color: AppColors.darkBlue,
    ),
    child: FloatingActionButton(
      onPressed: (){},
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

}