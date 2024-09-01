
import '../../../presentation/widget/build_manifest_table_for_b_manager.dart';
import '../../../presentation/widget/manifest_table_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_between_list_elements.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';
import '../../widget/trip_record_text.dart';

class ClosedManifestForB_Manager extends StatelessWidget{

  String manifest_id = 'DM-1-7099';

  int count = 1;
  int receipt = 5478;
  String source = 'Damascus';
  String type = 'package';
  int quantity = 20;
  String sender = 'Seba Taleaa';
  String consignee = 'Lilian Kabool';
  String against_shipping = "-";
  String adapter = "-";
  String miscellaneous = "-";
  String advance = "500,000";
  double collection = 250000000;
  String pre_paid = "-";
  String discount = '_';

  Widget ClosedManifestItemForB_Manager() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
    child: Column(
      children: [
        Expanded(
          child: Text(
            '${count}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${receipt}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${source}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${type}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${quantity}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${sender}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${consignee}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${against_shipping}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${miscellaneous}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${pre_paid}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${discount}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${collection}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${adapter}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripInvoiceForB_Manager()));
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: AppColors.darkBlue,
            ),
          ),
        ),
      ],
    ),
  );

  Widget BuildClosedManifestTableForB_Manager() => ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return ClosedManifestItemForB_Manager();
    },
    separatorBuilder: (context, index) => Container(
      width: 1.h,
      color: AppColors.mediumBlue,
    ),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
          SizedBox(
            height: screenHeight/75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  ${manifest_id}',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                border: Border.all(
                  color: AppColors.darkBlue,
                ),
              ),
              margin:  EdgeInsets.only(top: 20.0,left: 20.0),
              child: Row(
                children: [
                  ManifestTableHeader(),
                  Container(
                    width: 1.h,
                    color: AppColors.darkBlue,
                  ),
                  Expanded(
                    child: BuildClosedManifestTableForB_Manager(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
