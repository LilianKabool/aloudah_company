
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/divider_space_item.dart';
import '../widgets/order_details_text.dart';
import '../widgets/space_item.dart';


class OrderDetailsForAdmin extends StatelessWidget{
  final String source;
  final String destination;
  final String  sender;
  final String recipient;
  final String notes;
  final String prepaid_cost;
  final int num_of_packages;
  // package_type:shipping.;
  final String  prepaid_against_shipping;
  // collection_against_shipping:shipping.;
  // collection_cost:shipping;
  final String content;
  final int weight;
  final String marks;
  final String discount;
  final String size;
  final String collection_adapter;
  const OrderDetailsForAdmin({super.key, 
    required this.size ,
    required this.discount ,
    required this.marks ,
    required this.weight ,
    required this.content ,
    required this.notes ,
    required this.sender ,
    required this.destination ,
    required this.source ,
    required this.collection_adapter ,
    required this.num_of_packages ,
    required this.prepaid_against_shipping,
    required this.prepaid_cost,
    required this.recipient,
  });
  @override

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: OrderDetailsText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: ListView(
        children: [
          const SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                            source,
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
                            destination,
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
          ),
          const DividerSpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Sender',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 11.3,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            sender,
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
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Recipient',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 22,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            recipient,
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
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 8.9,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            notes,
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
              ],
            ),
          ),
          const DividerSpaceItem(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Information',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.yellow,
                    fontSize: 17.sp,
                  ),
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Num Of Packages',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.darkBlue,
                        child: Center(
                          child: Text(
                            '$num_of_packages',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureWhite,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Package Type',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    // SizedBox(
                    //   width: screenWidth / 8,
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     height: 35.h,
                    //     color: AppColors.yellow,
                    //     child: Center(
                    //       child: Text(
                    //         '${package_type}',
                    //         style: TextStyle(
                    //           fontFamily: 'bahnschrift',
                    //           color: AppColors.pureBlack,
                    //           fontSize: 16.sp,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Content',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 4.2,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.darkBlue,
                        child: Center(
                          child: Text(
                            content,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureWhite,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 3.85,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.yellow,
                        child: Center(
                          child: Text(
                            '$weight',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Marks',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 3.7,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.darkBlue,
                        child: Center(
                          child: Text(
                            marks,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureWhite,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Size',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 3.23,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.yellow,
                        child: Center(
                          child: Text(
                            size,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const DividerSpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                const SpaceItem(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: AppColors.pureWhite,
                    ),
                    Text(
                      'Prepaid',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Collection',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                //SpaceItem(),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Shipping',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'Costs',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Material(
                        elevation: 1.0,
                        child: Container(
                          height: 35.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              prepaid_cost,
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
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    // Expanded(
                    //   child: Material(
                    //     elevation: 1.0,
                    //     child: Container(
                    //       height: 35.h,
                    //       color: AppColors.mediumBlue,
                    //       child: Center(
                    //         child: Text(
                    //           '${collection_cost}',
                    //           style: TextStyle(
                    //             fontFamily: 'bahnschrift',
                    //             color: AppColors.darkBlue,
                    //             fontSize: 16.sp,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Against',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'Shipping',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Material(
                        elevation: 1.0,
                        child: Container(
                          height: 35.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              prepaid_against_shipping,
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
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    // Expanded(
                    //   child: Material(
                    //     elevation: 1.0,
                    //     child: Container(
                    //       height: 35.h,
                    //       color: AppColors.mediumBlue,
                    //       child: Center(
                    //         child: Text(
                    //           '${collection_against_shipping}',
                    //           style: TextStyle(
                    //             fontFamily: 'bahnschrift',
                    //             color: AppColors.darkBlue,
                    //             fontSize: 16.sp,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SpaceItem(),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Miscellane..',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          '\\ Adapter',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.pureBlack,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 1.0,
                        child: Container(
                          height: 35.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              collection_adapter,
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
                const SpaceItem(),
                Row(
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Container(
                        height: 35.h,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Material(
                        elevation: 1.0,
                        child: Container(
                          height: 35.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              discount,
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
              ],
            ),
          ),
          const SpaceItem(),
        ],
      ),
    );
  }

}