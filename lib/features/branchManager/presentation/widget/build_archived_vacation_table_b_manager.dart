
import 'package:aloudeh_company/features/branchManager/presentation/widget/archived_vacation_item_b_manager.dart';
import 'package:flutter/cupertino.dart';

class BuildArchivedVacationTableB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ArchivedVacationItemB_Manager();
      },
      itemCount: 15,
    );
  }

}