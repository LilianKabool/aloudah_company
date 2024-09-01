
import 'package:aloudeh_company/features/admin/presentation/widgets/logo_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors_constants.dart';


class EditDeleteeB_ManagerButtons extends StatefulWidget {
  @override
  State<EditDeleteeB_ManagerButtons> createState() =>
      _EditDeleteeB_ManagerButtonsState();
}

class _EditDeleteeB_ManagerButtonsState extends State<EditDeleteeB_ManagerButtons> {

  _deleteManager(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "do you want to delete this manager ?",
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
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteManager(context);
              },
              child: Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 11,
            ),
          ),
          LogoImageWidget(),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context) => EditEmployeeB_Manager()));
              },
              child: Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 12,
            ),
          ),
        ],
      ),
    );
  }
}
