import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/customer_information_text.dart';

class ViewCustomerForB_Manager extends StatefulWidget {final String customer_name;
final String customer_id ;
final String customer_phone ;
final String customer_mobile ;
final String customer_address ;
final String customer_address_details ;
final String customer_notes ;
ViewCustomerForB_Manager({
  required this.customer_name,
  required this.customer_notes,
  required this.customer_address,
  required this.customer_mobile,
  required this.customer_phone,
  required this.customer_address_details,
  required this.customer_id,
});
  @override
  State<ViewCustomerForB_Manager> createState() =>
      _ViewCustomerForB_ManagerState();
}

class _ViewCustomerForB_ManagerState extends State<ViewCustomerForB_Manager> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Align(
      //     alignment: Alignment.centerRight,
      //     child: CustomerInformationText(),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.chevron_left,
      //       color: AppColors.darkBlue,
      //     ),
      //   ),
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(1.0),
      //     child: DividerItem(),
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: screenHeight / 75,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           LogoImageWidget(),
      //           Text(
      //             'Our Customer Information ',
      //             style: TextStyle(
      //               color: AppColors.darkBlue,
      //               fontFamily: 'bahnschrift',
      //               fontSize: 17.sp,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           LogoImageWidget(),
      //         ],
      //       ),
      //     ),
      //     DividerBetweenListElements(),
      //     Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 'ID',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: screenWidth/7,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_id}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 'Name',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: screenWidth/14.3,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_name}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 'Phone',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: screenWidth/17,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_phone}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 'Mobile',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: screenWidth/19,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_mobile}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 'Address',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: screenWidth/60,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_address}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Row(
      //             children: [
      //               Column(
      //                 children: [
      //                   Text(
      //                     'Address',
      //                     style: TextStyle(
      //                       fontFamily: 'bahnschrift',
      //                       color: AppColors.darkBlue,
      //                       fontSize: 16.sp,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Details',
      //                     style: TextStyle(
      //                       fontFamily: 'bahnschrift',
      //                       color: AppColors.darkBlue,
      //                       fontSize: 16.sp,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 width: screenWidth/60,
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 40.h,
      //                   color: AppColors.mediumBlue,
      //                   child: Center(
      //                     child: Text(
      //                       '${customer_address_details}',
      //                       style: TextStyle(
      //                         fontFamily: 'bahnschrift',
      //                         fontSize: 16.sp,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         DividerBetweenListElements(),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Notes',
      //                 style: TextStyle(
      //                   fontFamily: 'bahnschrift',
      //                   color: AppColors.darkBlue,
      //                   fontSize: 16.sp,
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: screenHeight/110,
      //               ),
      //               Container(
      //                 height: 100.h,
      //                 color: AppColors.mediumBlue,
      //                 child: Center(
      //                   child: Text(
      //                     '${customer_notes}',
      //                     style: TextStyle(
      //                       fontFamily: 'bahnschrift',
      //                       fontSize: 16.sp,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 8.33,
                    decoration: BoxDecoration(
                      color: AppColors.pureWhite,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 8.33,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.r),
                      ),
                    ),
                    child: Center(child: CustomerInformationText()),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.1995,
                  decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.waving_hand,
                              color: AppColors.darkBlue,
                            ),
                            // SizedBox(
                            //   width: 10.w,
                            // ),
                            Text(
                              'Hello Again!',
                              style: TextStyle(
                                color: AppColors.yellow,
                                fontFamily: 'Bauhaus',
                                fontSize: 20.sp,
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.waving_hand,
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DividerSpaceItem(),
                      SpaceItem(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: screenHeight / 1.5,
                            width: screenWidth / 1.5,
                            padding: EdgeInsets.only(top: 10.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.r),
                                topRight: Radius.circular(40.r),
                              ),
                              border: Border.all(
                                color: AppColors.pureBlack,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: screenHeight / 1.5,
                            width: screenWidth / 1.5,
                            padding: EdgeInsets.only(top: 20.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.r),
                                  topRight: Radius.circular(40.r),
                                ),
                                border: Border.all(
                                  color: AppColors.pureBlack,
                                ),
                                color: AppColors.pureWhite),
                            child: Text(
                              '${widget.customer_name}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'bahnschrift',
                                fontSize: 17.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0),
                            child: Column(
                              children: [
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.numbers,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'ID   : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_id}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Phone : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_phone}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.phone_android,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Mobile : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_mobile}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.home_outlined,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Address : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_address}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.home,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'A.Details : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_address_details}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  color: AppColors.lightBlue,
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.note_outlined,
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Notes : ',
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${widget.customer_notes}',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SpaceItem(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
