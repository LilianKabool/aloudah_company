
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class ViewArchivedEmployeeInformation extends StatelessWidget{

  String employee_name = "Lilian Kabool";
  int employee_id = 03100004564;
  String employee_gender = "Female";
  String employee_b_date = "14/01/2002";
  String employee_b_place = "Damascuse";
  int employee_phone = 0116798456;
  String employee_mobile = "+963 988011745";
  String employee_address = "Damascus";
  int employee_vacations = 3;
  String employee_mother_name = "Seba Taleaa";
  String employee_rank = "Employee";
  double employee_rate = 5;
  double employee_salary = 500000;
  String employee_emp_date = "20/8/2012";
  String employee_resignation_date = "20/8/2024";
  String department = "Financial";

  ViewArchivedEmployeeInformation({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          Row(
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
                width: screenWidth/5.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$employee_id',
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
                'Name',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/10.4,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_name,
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
              Column(
                children: [
                  Text(
                    'Mother',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth/14.4,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_mother_name,
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
                'Gender',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/14.4,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_gender,
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
                'B_Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/13.5,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_b_date,
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
                'B_Place',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/17.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_b_place,
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
                'Phone',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/11,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$employee_phone',
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
                'Mobile',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/11.6,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_mobile,
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
                'Address',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/20,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_address,
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
                'Vacations',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/40,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '$employee_vacations',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
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
                'Rank',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/8.5,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_rank,
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
                'Rate',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/7.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$employee_rate',
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
                'Dept',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/7.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      department,
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
                'Salary',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/11,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$employee_salary',
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
                'Emp_Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/50,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_emp_date,
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
                'Resi_Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/50,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      employee_resignation_date,
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
        ],
      ),
    );
  }

}