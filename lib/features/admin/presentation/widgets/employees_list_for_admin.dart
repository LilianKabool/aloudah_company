import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/archived_employees_list_for_admin.dart';
import '../screens/drivers_list_for_admin.dart';
import '../screens/employees_list_tab_for_admin.dart';
import 'employees_list_text.dart';



class EmployeesListForAdmin extends StatelessWidget{
  final int branchId ;
  EmployeesListForAdmin({required this.branchId});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: const Align(
            alignment: Alignment.centerRight,
            child: EmployeesListText(),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person,), text: "Employees",),
              Tab(icon: Icon(Icons.drive_eta,), text: "Drivers",),
              Tab(icon: Icon(Icons.archive, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body:  TabBarView(
          children: [
            EmployeesListTabForAdmin(branchId: branchId,),
            DriversListForAdmin(branchId: branchId,),
            ArchivedEmployeeListForAdmin(),
          ],

        ),
      ),
    );
  }
}