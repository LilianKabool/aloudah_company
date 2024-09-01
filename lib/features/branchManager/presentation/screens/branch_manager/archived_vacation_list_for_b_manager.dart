import 'package:aloudeh_company/features/branchManager/presentation/widget/vacations_table_header.dart';

import '../../../../admin/presentation/widgets/space_item.dart';
import './../../../presentation/widget/build_archived_vacation_table_b_manager.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';
import '../../widget/vacations_text.dart';

class ArchivedVacationListForB_Manager extends StatelessWidget{

  String employee_name = "Lilian Kabool";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: VacationsText(),
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
                  width: screenWidth/10.4,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${employee_name}',
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
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          SpaceItem(),
          Expanded(
            child: Row(
              children: [
                VacationsTableHeader(),
                Expanded(
                  child: BuildArchivedVacationTableB_Manager(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}