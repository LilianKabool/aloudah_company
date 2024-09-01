import 'package:flutter/cupertino.dart';

import 'divider_item.dart';
import 'employee_item_b_manager.dart';

class BuildEmployeesListB_Manager extends StatelessWidget{
  const BuildEmployeesListB_Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return EmployeeItemB_Manager();
      },
      separatorBuilder: (context, index) => const DividerItem(),
      itemCount: 15,
    );
  }

}