

import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../admin/presentation/widgets/space_item.dart';
import 'about_us_text.dart';

class AboutUsScreenForCustomer extends StatelessWidget{

  String bio = 'Lorem Ipsum is simply dummy text of the printingand typesetting industry. Lorem Ipsum has beenthe industrys standard dummy text ever since the1500s,Lorem Ipsum has been the industry sstandard dummy text ever since the 1500s';
  String damascus_number = '0988737901';
  String aleppo_number = '0930411161';
  String hama_number = '033-2441646';
  String homs_number = '031-3045';
  String tartous_number = '043-3045';
  String safita_number = '0989802198';
  String lattakia_number = '041-3045';
  String jableh_number = '041-8820360';
  String banias_number = '043-7719855';
  String daraa_number = '0954109528';
  String swaidaa_number = '0932999611';


  Widget AboutUsWhoAreWe() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceItem(),
          Text(
            'Who Are We ?',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
              fontSize: 18.sp,
            ),
          ),
          SpaceItem(),
          Text(
            '${bio}',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 10,
          ),
        ],
      ),
    ),
  );

  Widget AboutUsCompanyInfo() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Damascus',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${damascus_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    'Lattakia',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    '${lattakia_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Tartous',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${tartous_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    'Swaidaa',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    '${swaidaa_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Aleppo',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${aleppo_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    'Banias',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    '${banias_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Safita',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${safita_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    'Jableh',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    '${jableh_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Daraa',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${daraa_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    'Homs',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    '${homs_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
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
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.darkBlue,
                ),
                child: Center(
                  child: Text(
                    'Hama',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.r),
                  color: AppColors.mediumBlue,
                ),
                child: Center(
                  child: Text(
                    '${hama_number}',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SpaceItem(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AboutUsText(),
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
          AboutUsWhoAreWe(),
          DividerSpaceItem(),
          Expanded(
            child: AboutUsCompanyInfo(),
          ),
        ],
      ),
    );
  }

}