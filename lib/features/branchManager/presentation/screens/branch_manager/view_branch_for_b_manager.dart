
import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/widget/branch_information_text.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/branch_information_for_employee.dart';
import '../../widget/divider_item.dart';

class ViewBranchForB_Manager extends StatefulWidget {
  @override
  State<ViewBranchForB_Manager> createState() => _ViewBranchForB_ManagerState();
}

class _ViewBranchForB_ManagerState extends State<ViewBranchForB_Manager> {
  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  String branch_desk = 'Aleppo';
  String branch_address = 'Aleppo, street 16';
  String branch_manager = 'Seba Taleaa';
  String branch_mobile = '+963 988022813';
  String branch_opening_date = '25-07-2009';

  Widget RowTableItem() {
    return GestureDetector(
      onTap: (){
       // Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripAfterInvoiceEmployee() /*ViewTripBeforInvoiceEmployee()*/));
      },
      child: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 20.0.w),
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${trip}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${driver}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${date}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTripsTable() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return RowTableItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
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
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Desk',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 9,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${branch_desk}',
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
                    Text(
                      'Address',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 25,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${branch_address}',
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
                    Text(
                      'Manager',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 30,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${branch_manager}',
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
                    Text(
                      'Mobile',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 13,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${branch_mobile}',
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
                    Column(
                      children: [
                        Text(
                          'Opening',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        color: AppColors.mediumBlue,
                        child: Center(
                          child: Text(
                            '${branch_opening_date}',
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
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Trip',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Driver',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Date',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          Expanded(
            child: buildTripsTable(),
          ),
        ],
      ),
    );
  }
}
