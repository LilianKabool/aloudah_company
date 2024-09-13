
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/add_driver_screen.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/add_employee_screen.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_archived_employee_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_driver_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_employee_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';

class EmployeesListForB_manager2 extends StatefulWidget{

  @override
  State<EmployeesListForB_manager2> createState() => _EmployeesListForB_manager2State();
}

class _EmployeesListForB_manager2State extends State<EmployeesListForB_manager2> {

  String employeeName = 'Lilian Kabool';
  String selectedOption = 'Employees';
  String driverName = 'Mohammed Hwaidi';
  String archivedEmployeeName = 'Lilian Kabool';

  _deleteEmployee (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this employee ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  _deleteDriver (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this driver ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget EmployeeItemB_Manager() => Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${employeeName}',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
          ),
        ),
        TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewEmployeeB_Manager()));
          },
          child: Text(
            'View',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
              fontSize: 16.sp,
            ),
          ),
        ),
        Icon(
          Icons.compare_arrows,
        ),
        TextButton(
          onPressed: (){
            _deleteEmployee(context);
          },
          child: Text(
            'Delete',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
    ),
  );

  Widget BuildEmployeesListB_Manager() => ListView.separated(
    itemBuilder: (context, index) {
      return EmployeeItemB_Manager();
    },
    separatorBuilder: (context, index) => DividerItem(),
    itemCount: 15,
  );

  Widget EmployeesList() => Column(
    children: [
      Expanded(
        child: BuildEmployeesListB_Manager(),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.r),
              topLeft: Radius.circular(50.r),
            ),
          ),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AddEmployeeScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  topLeft: Radius.circular(50.r),
                ),
              ),
            ),
            child: Text(
              'Add Employee',
              style: TextStyle(
                color:  AppColors.mediumBlue,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    ],
  );

  Widget DriverItemB_Manager() => Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${driverName}',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
          ),
        ),
        TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewDriverB_Manager()));
          },
          child: Text(
            'View',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
              fontSize: 16.sp,
            ),
          ),
        ),
        Icon(
          Icons.compare_arrows,
        ),
        TextButton(
          onPressed: (){
            _deleteDriver(context);
          },
          child: Text(
            'Delete',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
    ),
  );

  Widget BuildDriversListB_Manager() => ListView.separated(
    itemBuilder: (context, index) {
      return DriverItemB_Manager();
    },
    separatorBuilder: (context, index) => DividerItem(),
    itemCount: 15,
  );

  Widget DriversList() => Column(
    children: [
      Expanded(
        child: BuildDriversListB_Manager(),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.r),
              topLeft: Radius.circular(50.r),
            ),
          ),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AddDriverScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  topLeft: Radius.circular(50.r),
                ),
              ),
            ),
            child: Text(
              'Add Driver',
              style: TextStyle(
                color:  AppColors.mediumBlue,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    ],
  );

  Widget ArchivedEmployeeItemB_Manager() => Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${archivedEmployeeName}',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
          ),
        ),
        IconButton(
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewArchivedEmployeeForB_Manager()));
          },
          icon: Icon(
            Icons.directions,
            color: AppColors.yellow,
            size: 30,
          ),
        ),
      ],
    ),
  );

  Widget BuildArchivedEmployeesListB_Manager() => ListView.separated(
    itemBuilder: (context, index) {
      return ArchivedEmployeeItemB_Manager();
    },
    separatorBuilder: (context, index) => DividerItem(),
    itemCount: 15,
  );

  Widget ArchivedEmployeesList() => BuildArchivedEmployeesListB_Manager();

  @override
  Widget build(BuildContext context) {
     //double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                    height: MediaQuery.of(context).size.height/4,
                    decoration: BoxDecoration(
                      color: AppColors.pureWhite,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/4,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70.r),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage('assets/images/Logo2.png'),
                          width: 60.w,
                          height: 60.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                child: Text(
                                  'Employees',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                    color: selectedOption == 'Employees'
                                        ? AppColors.yellow
                                        : AppColors.mediumBlue,
                                  ),
                                ),
                                onPressed: (){
                                  setState(() {
                                    selectedOption = 'Employees';
                                  });
                                },
                              ),
                              TextButton(
                                child: Text(
                                  'Drivers',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                    color: selectedOption == 'Drivers'
                                        ? AppColors.yellow
                                        : AppColors.mediumBlue,
                                  ),
                                ),
                                onPressed: (){
                                  setState(() {
                                    selectedOption = 'Drivers';
                                  });
                                },
                              ),
                              TextButton(
                                child: Text(
                                  'Archived',
                                  style: TextStyle(
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                    color: selectedOption == 'Archived'
                                        ? AppColors.yellow
                                        : AppColors.mediumBlue,
                                  ),
                                ),
                                onPressed: (){
                                  setState(() {
                                    selectedOption = 'Archived';
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.423,
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.422,
                  decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 20.h),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.r),
                            bottomLeft: Radius.circular(25.r),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: AppColors.darkBlue,
                              ),
                              //contentPadding: EdgeInsets.only(left: 15.0,top: 10.0),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color:  AppColors.darkBlue,
                                fontFamily: 'Bauhaus',
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (selectedOption == 'Employees') Expanded(child: EmployeesList()),
                      if (selectedOption == 'Drivers') Expanded(child:DriversList()),
                      if (selectedOption == 'Archived') Expanded(child:ArchivedEmployeesList()),
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