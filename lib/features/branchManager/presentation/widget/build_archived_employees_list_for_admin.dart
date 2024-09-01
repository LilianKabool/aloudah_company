
import 'package:aloudeh_company/features/admin/presentation/widgets/archive_employee_item_for_admin.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class BuildArchivedEmployeesListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedEmployeeItemForAdmin();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}