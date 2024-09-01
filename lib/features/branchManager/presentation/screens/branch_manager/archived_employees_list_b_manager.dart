import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/archived_employee_search_button.dart';
import '../../widget/build_archived_employees_list_b_manager.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';

class ArchivedEmployeesListB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        ArchivedEmployeeSearchButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildArchivedEmployeesListB_Manager(),
        ),
      ],
    );
  }

}