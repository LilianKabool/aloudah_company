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

class ManifestScreenForB_Manager extends StatelessWidget {
  final String manifest_id;

  // final int count;
  // final int receipt;
  //
  // final String source;
  //
  // final String type;
  //
  // final int quantity;
  //
  // final String sender;
  // final String consignee;
  //
  // final String against_shipping;
  //
  // final String adapter;
  //
  // final String miscellaneous;
  //
  // final String advance;
  //
  // final double collection;
  //
  // final String pre_paid;
  //
  // final String discount;

  ManifestScreenForB_Manager(
      {
        // required this.count,
        // required this.receipt,
        // required this.source,
        // required this.type,
        // required this.quantity,
        // required this.sender,
        // required this.consignee,
        // required this.against_shipping,
        // required this.adapter,
        // required this.miscellaneous,
        // required this.advance,
        // required this.collection,
        // required this.pre_paid,
        // required this.discount,
      required this.manifest_id});

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
            height: screenHeight / 75,
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
              margin: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Row(
                children: [
                  ManifestTableHeader(),
                  Container(
                    width: 1.h,
                    color: AppColors.darkBlue,
                  ),
                  Expanded(
                    child: BuildManifestTableForB_Manager(
                      // adapter: adapter,
                      //   advance: advance,
                      // against_shipping: against_shipping,
                      // collection: collection,
                      // consignee: consignee,
                      // count: count,
                      // discount: discount,
                      // miscellaneous: miscellaneous,
                      //  pre_paid: pre_paid,
                      // quantity: quantity,
                      // receipt: receipt,
                      // sender: sender,
                      // source: source,
                      // type: type,
                    ),
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
