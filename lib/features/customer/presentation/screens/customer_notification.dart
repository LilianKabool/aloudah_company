
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerNotification extends StatelessWidget{

  String notification = 'dfghj dfghj dfgh fghj fgh';

  Widget NotificationItem() => Container(
    height: 60.h,
    margin: EdgeInsets.symmetric(horizontal: 20.w),
    child: Material(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.darkBlue,
              radius: 25.r,
              child: Icon(
                Icons.notifications,
                color: AppColors.pureWhite,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Text(
                '${notification}',
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                ),
              ),
            ),
            Icon(
              Icons.check_circle_outline,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    ),
  );

  Widget BuildNotificationList() => ListView.separated(
    itemBuilder: (context, index) {
      return NotificationItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        Expanded(
          child: BuildNotificationList(),
        ),
      ],
    );
  }

}