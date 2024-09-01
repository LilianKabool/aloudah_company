import 'package:flutter/material.dart';

import '../widgets/build_employees_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/employee_search_button.dart';
import '../widgets/space_item.dart';


class EmployeesListTabForAdmin extends StatelessWidget{
  final int branchId ;
  EmployeesListTabForAdmin({ required this.branchId});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SpaceItem(),
        SearchEmployeeButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
            child: BuildEmployeesListForAdmin(branchId:branchId,),
        ),
      ],
    );
  }

}