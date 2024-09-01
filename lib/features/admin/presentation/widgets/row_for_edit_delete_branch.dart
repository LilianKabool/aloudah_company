
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors_constants.dart';
import '../screens/edit_branch_screen.dart';
import 'logo_image_widget.dart';

class RowForEditDeleteBranch extends StatelessWidget{
  const RowForEditDeleteBranch({super.key});


  _deleteBranch (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this branch ?",
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
                  onPressed: (){},
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text(
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
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteBranch(context);
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 6,
              child: const Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
            ),
          ),
          const LogoImageWidget(),
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditBranchScreen()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: 5,
              child: const Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }

}