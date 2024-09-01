
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/complaint_text.dart';
import '../../widget/divider_item.dart';

class ComplaintsForB_Manager extends StatelessWidget{

  var complaint = 'swdcfgvbhnjmkedrfghbjnkmsdfcvgbhnjmkasxdcfvgbhnjmszxdcfvgbhnzsxdcvb nzsxdcfvgbhzsxdcfvgbhnsxdcfvswdcfgvbhnjmkedrfghbjnkmsdfcvgbhnjmkasxdcfvgbhnjmszxdcfvgbhnzsxdcvb nzsxdcfvgbhzsxdcfvgbhnsxdcfv';

  Widget ComplaintItem(int index) => Container(
    width: double.infinity,
    //height: 200.h,
    margin: EdgeInsets.symmetric(horizontal: 20.w),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: AppColors.lightBlue,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40.r),
        topLeft: Radius.circular(40.r),
        topRight: Radius.circular(40.r),
      ),
    ),
    child: Text(
      '${complaint}',
      style: TextStyle(
        color: AppColors.pureBlack,
        fontSize: 16.sp,
        // overflow: TextOverflow.ellipsis,
      ),
      // maxLines: 2,
    ),
  );

  Widget buildComplaintList() => Padding(
    padding: EdgeInsets.symmetric(vertical: 20.h),
    child: ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => ComplaintItem(index),
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 5,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: ComplaintText(),
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
          Expanded(child: buildComplaintList()),
        ],
      ),
    );
  }

}