import '../../presentation/screens/branch_manager/edit_profile_for_b_manager.dart';
import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class B_ManagerProfileInfo extends StatelessWidget{

  final String  email ;
  final String  address ;
  final String  birth ;
  final String  mobile ;
  B_ManagerProfileInfo({required this.email , required this.address , required this.mobile , required this.birth ,});
  void bottomSheetForEditProfile(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return EditProfileForB_Manager();
      },
      backgroundColor: AppColors.pureWhite,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.email_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${email}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.phone_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${mobile}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.home_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${address}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.cake_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${birth}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.edit_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {
                   // bottomSheetForEditProfile(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    width: double.infinity,
                    height: 42.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(31.r),
                      color: AppColors.lightBlue,
                    ),
                    child: Center(
                      child: Text(
                        'Edit Information',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 17.0.sp,
                        ),
                      ),
                    ),
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