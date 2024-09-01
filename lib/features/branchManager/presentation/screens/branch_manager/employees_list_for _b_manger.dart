
import '../../../presentation/screens/branch_manager/employees_list_tab_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/employees_list_text.dart';
import 'archived_employees_list_b_manager.dart';
import 'drivers_list_for_b_manager.dart';

class EmployeesListForB_Manager extends StatelessWidget{
  // final driverID ;
  // EmployeesListForB_Manager({required this.driverID})
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: Align(
            alignment: Alignment.centerRight,
            child: EmployeesListText(),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person,), text: "Employees",),
              Tab(icon: Icon(Icons.drive_eta,), text: "Drivers",),
              Tab(icon: Icon(Icons.archive, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body: TabBarView(
          children: [
            EmployeesListTabB_Manager(),
            DriversListForB_Manager(),
            ArchivedEmployeesListB_Manager(),
          ],
        ),
      ),
    );
  }

}