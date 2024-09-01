import 'package:aloudeh_company/features/branchManager/presentation/widget/view_archived_employee_info_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/view_employees_powers_button_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../../admin/presentation/widgets/employee_information_text.dart';
import '../../../../admin/presentation/widgets/space_item.dart';
import '../../widget/divider_item.dart';

class ViewArchivedEmployeeForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          Expanded(child: ViewArchivedEmployeeInfoB_Manager()),
          ViewEmployeesPowersButtonForB_manger(),
          SpaceItem(),
        ],
      ),
    );
  }

}