import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/space_item.dart';

class AdminProfileScreen extends StatelessWidget {

  String user_rank = "Admin";
  String user_name = "Seba Taleaa";

  String user_email = "dddff@gmail.com";
  String user_address = "UAE, Dubai";
  String user_birth = "25 jul 1990";
  String user_mobile = "0985476215";

  Widget AdminProfileInfo() => Padding(
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
                    '${user_email}',
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
                    '${user_mobile}',
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
                    '${user_address}',
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
                    '${user_birth}',
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
                {},
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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SpaceItem(),
        Icon(
          Icons.account_circle,
          color: AppColors.darkBlue,
          size: 120.r,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          '${user_name}',
          style: TextStyle(
            color: AppColors.pureBlack,
            fontFamily: 'bahnschrift',
            fontSize: 22.0.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          '${user_rank}',
          style: TextStyle(
            color: AppColors.pureBlack,
            fontFamily: 'Bauhaus',
            fontSize: 18.0.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SpaceItem(),
        SpaceItem(),
        AdminProfileInfo(),
        SpaceItem(),
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.5),
            BlendMode.dstIn,
          ),
          child: Image.asset(
            'assets/images/Logo.png',
            fit: BoxFit.contain,
            width: 188.w,
            height: 188.h,
          ),
        ),
      ],
    );
  }
}
