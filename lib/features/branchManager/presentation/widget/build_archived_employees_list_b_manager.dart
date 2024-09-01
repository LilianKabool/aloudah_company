import 'package:flutter/cupertino.dart';

import 'archived_employee_item_b_manager.dart';
import 'divider_item.dart';
import 'employee_item_b_manager.dart';

class BuildArchivedEmployeesListB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedEmployeeItemB_Manager();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}