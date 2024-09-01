import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';

class EditProfileForB_Manager extends StatefulWidget{
  @override
  State<EditProfileForB_Manager> createState() => _EditProfileForB_ManagerState();
}

class _EditProfileForB_ManagerState extends State<EditProfileForB_Manager> {

  bool isEditing = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController birthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildTextField('Email', emailController),
        buildTextField('Phone', phoneController),
        buildTextField('Address', addressController),
        buildTextField('Birth', birthController),
      ],
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Row(
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
        Expanded(
          child: Container(
            height: 44.h,
            decoration: BoxDecoration(
              color: AppColors.pureWhite,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: AppColors.darkBlue,
              ),
            ),
            child: Center(
              child: isEditing
                  ? TextField(
                controller: controller,
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              )
                  : Text(
                controller.text,
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
        //SpaceItem(),
      ],
    );
  }

}