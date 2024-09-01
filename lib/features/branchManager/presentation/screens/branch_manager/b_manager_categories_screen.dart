
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/branches_list_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/customers_list_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/employees_list_for%20_b_manger.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/trips_list_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/trucks_list_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'complaints_for_b_manager.dart';



class B_ManagerCategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    String notification = 'dfghj dfghj dfgh fghj fgh';

    Widget NotificationItem() => Padding(
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
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // ButtonsRowB_ManagerMainScreen(),
            // SizedBox(
            //   height: screenHeight/30,
            // ),
            // SearchFieldInAdminMainScreen(),
            Container(
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // FloatingActionButton(
                  //     onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  //   shape: CircleBorder(
                  //     side: BorderSide(
                  //       color: AppColors.darkBlue,
                  //     ),
                  //   ),
                  //   backgroundColor: AppColors.pureWhite,
                  //   elevation: 0.0,
                  //   child: Icon(
                  //     Icons.notifications,
                  //     color: AppColors.darkBlue,
                  //   ),
                  // ),
                  Builder(
                    builder: (context) => FloatingActionButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      shape: CircleBorder(
                        side: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                      ),
                      backgroundColor: AppColors.pureWhite,
                      elevation: 0.0,
                      child: Icon(
                        Icons.notifications,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>ComplaintsForB_Manager()));
                    },
                    shape: CircleBorder(
                      side: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                    ),
                    backgroundColor: AppColors.pureWhite,
                    elevation: 0.0,
                    child: Icon(
                      Icons.report_problem,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    shape: CircleBorder(
                      side: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                    ),
                    backgroundColor: AppColors.pureWhite,
                    elevation: 0.0,
                    child: Text(
                      'EN',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight/20,
            ),
            Text(
              'Tell us',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'where do you want to go?',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trips-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trips List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>TripsListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Employees-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Employees List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>EmployeesListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trucks-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trucks List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>TrucksListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Customers-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Customers List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>CustomersListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Company-Branches.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Company Branches',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>BranchesListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Reports-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Reports List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.pureWhite,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return NotificationItem();
            },
            separatorBuilder: (context, index) => DividerSpaceItem(),
            itemCount: 15,
          ),
        ),
      ),
    );
  }

}