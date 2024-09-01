

import 'package:flutter/material.dart';

import '../widgets/build_archived_employees_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/search_archived_employee_button.dart';
import '../widgets/space_item.dart';

class ArchivedEmployeeListForAdmin extends StatelessWidget{
  const ArchivedEmployeeListForAdmin({super.key});


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpaceItem(),
        SearchArchivedEmployeeButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
           child: BuildArchivedEmployeesListForAdmin(),
         ),
      ],
    );
  }

}