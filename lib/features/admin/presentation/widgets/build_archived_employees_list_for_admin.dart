
import 'package:flutter/cupertino.dart';

import 'archive_employee_item_for_admin.dart';
import 'divider_item.dart';

class BuildArchivedEmployeesListForAdmin extends StatelessWidget{
  const BuildArchivedEmployeesListForAdmin({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedEmployeeItemForAdmin();
      },
      separatorBuilder: (context, index) => const DividerItem(),
      itemCount: 15,
    );
  }
}