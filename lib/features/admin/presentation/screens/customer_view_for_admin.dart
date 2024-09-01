import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/customer_info__for_admin.dart';
import '../widgets/customer_information_text.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/logo_image_widget.dart';

class CustomersViewForAdmin extends StatefulWidget {
  final String? customer_name;

  final int customer_id;

  final int customer_phone;

  final String? customer_address_details;

  final String? customer_address;

  final String? customer_notes;

  final int customer_mobile;

  CustomersViewForAdmin(
      {super.key,
      required this.customer_name,
      required this.customer_id,
      required this.customer_phone,
      required this.customer_address,
      required this.customer_address_details,
      required this.customer_notes,
      required this.customer_mobile});

  @override
  State<CustomersViewForAdmin> createState() => _CustomersViewForAdminState();
}

class _CustomersViewForAdminState extends State<CustomersViewForAdmin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: CustomerInformationText(),
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
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LogoImageWidget(),
                Text(
                  'Our Customer Information ',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const LogoImageWidget(),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'ID',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 7,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_id.toString(),
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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 14.3,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_name.toString() != null ? widget.customer_name.toString()
                                : 'null',
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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Phone',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 17,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_phone.toString() != null ? widget.customer_phone.toString()
                                : 'null',

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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Mobile',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 19,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_mobile.toString() != null ? widget.customer_phone.toString()
                                : 'null',
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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 60,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_address.toString() != null ? widget.customer_address.toString()
                                : 'null',

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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth / 60,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            widget.customer_address_details.toString() != null ?
                            widget.customer_address_details.toString()    : 'null',


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
              ),
              const DividerBetweenListElements(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: screenHeight / 110,
                    ),
                    Container(
                      height: 100.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(

                          widget.customer_notes.toString() != null ?
                          widget.customer_notes.toString()    : 'null',

                          style: TextStyle(
                            fontFamily: 'bahnschrift',
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
        ],
      ),
    );
  }
}
