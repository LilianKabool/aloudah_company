
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/b_manager_profile_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../admin/presentation/widgets/space_item.dart';

class B_ManagerProfileScreen extends StatelessWidget {

  String user_rank = "Branch Manager";
  String user_name = "Seba Taleaa";

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
        B_ManagerProfileInfo(),
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
