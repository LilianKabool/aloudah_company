import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/package_info_in_view_t_invoice_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/sender_recipient_notes_in_view_t_invoice_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/trip_invoice_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewTripInvoiceForB_Manager extends StatelessWidget {
  String source = 'Damascus';
  String destination = 'Daraa';
  double shipping_cost = 2500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripInvoiceText(),
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
      body: ListView(
        children: [
          SpaceItem(),
          SourceDestInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          SenderRecipientNotesInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          PackageInfoInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          CostsInViewT_InvoiceForB_Manager(),
          SpaceItem(),
        ],
      ),
    );
  }

  Widget SourceDestInViewT_InvoiceForB_Manager() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Source',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.darkBlue,
                    ),
                    child: Center(
                      child: Text(
                        '${source}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Destination',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.yellow,
                    ),
                    child: Center(
                      child: Text(
                        '${destination}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget CostsInViewT_InvoiceForB_Manager() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Costs',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.yellow,
                fontSize: 17.sp,
              ),
            ),
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Shipping Cost',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureBlack,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: 42.8.w,
                ),
                Expanded(
                  child: Material(
                    elevation: 1.0,
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${shipping_cost}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
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
}
