
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

import 'manifest_item_for_b_manager.dart';

class BuildManifestTableForB_Manager extends StatelessWidget{

  // final int count;
  // final int receipt ;
  // final String  source ;
  // final String  type ;
  // final int quantity ;
  // final String  sender;
  // final String  consignee ;
  // final String  against_shipping ;
  // final String  adapter ;
  // final String  miscellaneous ;
  // final String  advance ;
  // final double collection ;
  // final String  pre_paid ;
  // final String  discount ;
  // BuildManifestTableForB_Manager({
  //   required this.count,
  //   required this.receipt ,
  //   required this.source ,
  //   required this.type ,
  //   required this.quantity ,
  //   required this.sender,
  //   required this.consignee ,
  //   required this.against_shipping ,
  //   required this.adapter ,
  //   required this.miscellaneous ,
  //   required this.advance ,
  //   required this.collection ,
  //   required this.pre_paid ,
  //   required this.discount ,
  // });
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ManifestItemForB_Manager(
        //   type: type,
        // source: source,
        // sender: sender,
        // receipt: receipt,
        //   quantity: quantity,
        //   pre_paid: pre_paid,
        //   miscellaneous: miscellaneous,
        //   discount: discount,
        //   count: count,
        //   consignee: consignee,
        //   collection: collection,
        //   against_shipping: against_shipping,
        //   advance: advance,
        //   adapter: adapter,

        );
      },
      separatorBuilder: (context, index) => Container(
        width: 1.h,
        color: AppColors.mediumBlue,
      ),
      itemCount: 15,
    );
  }

}