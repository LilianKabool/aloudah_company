
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../branchManager/presentation/widget/profile_text.dart';



class ViewProfileForCustomer extends StatelessWidget{

  String user_rank = "Customer";
  String user_name = "Seba Taleaa";

  String user_email = "dddff@gmail.com";
  String user_address = "UAE, Dubai";
  String user_birth = "25 jul 1990";
  String user_mobile = "0985476215";

  Widget CustomerProfileInfo() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r),
            color: AppColors.lightBlue,
          ),
          child: Row(
            children: [
              Icon(
                Icons.email_outlined,
                color: AppColors.darkBlue,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                '${user_email}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                ),
              ),
            ],
          ),
        ),
        SpaceItem(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r),
            color: AppColors.lightBlue,
          ),
          child: Row(
            children: [
              Icon(
                Icons.phone_outlined,
                color: AppColors.darkBlue,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                '${user_mobile}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                ),
              ),
            ],
          ),
        ),
        SpaceItem(),
        Container(
          width: double.infinity,
          height: 42.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r),
            color: AppColors.lightBlue,
          ),
          child: Row(
            children: [
              Icon(
                Icons.home_outlined,
                color: AppColors.darkBlue,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                '${user_address}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                ),
              ),
            ],
          ),
        ),
        SpaceItem(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r),
            color: AppColors.lightBlue,
          ),
          child: Row(
            children: [
              Icon(
                Icons.cake_outlined,
                color: AppColors.darkBlue,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                '${user_birth}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                ),
              ),
            ],
          ),
        ),
        SpaceItem(),
        SpaceItem(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: AppColors.darkBlue,
            ),
            Icon(
              Icons.star_half,
              color: AppColors.darkBlue,
            ),
            Icon(
              Icons.star,
              color: AppColors.darkBlue,
            ),
            Icon(
              Icons.star_half,
              color: AppColors.darkBlue,
            ),
            Icon(
              Icons.star,
              color: AppColors.darkBlue,
            ),
          ],
        ),
        SpaceItem(),
        SpaceItem(),
        GestureDetector(
          onTap: ()
          {},
          child: Container(
            // margin: EdgeInsets.only(left: 5.w),
            width: 200.w,
            height: 42.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31.r),
              color: AppColors.yellow,
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
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Align(
          alignment: Alignment.centerRight,
          child: ProfileText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.mediumBlue,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.pureWhite,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(180.r),
                topLeft: Radius.circular(180.r),
              ),
            ),
            child: ListView(
              children: [
                SpaceItem(),
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
                CustomerProfileInfo(),
                SpaceItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

}