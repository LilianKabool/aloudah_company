import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/widget/add_vacation_reason_widget.dart';
import '../../../presentation/widget/add_vacation_date_widget.dart';
import '../../../presentation/widget/build_archived_vacation_table_b_manager.dart';
import '../../../presentation/widget/build_vacation_table_for_b_manager.dart';
import '../../../presentation/widget/save_vacation_button.dart';
import '../../../presentation/widget/space_item.dart';
import '../../../presentation/widget/vacations_table_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/divider_item.dart';
import '../../widget/vacations_text.dart';

class VacationListForB_Manager extends StatelessWidget{

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
          AddVacationDateWidget(),
          SpaceItem(),
          AddVacationReasonWidget(),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          SpaceItem(),
          Expanded(
            child: Row(
              children: [
                VacationsTableHeader(),
                Expanded(
                  child: BuildVacationTableForB_Manager(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: SaveVacationButton(),
          ),
        ],
      ),
    );
  }

}