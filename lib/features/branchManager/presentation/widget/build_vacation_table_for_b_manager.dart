
import 'package:aloudeh_company/features/branchManager/presentation/widget/vacation_item_for_b_manager.dart';
import 'package:flutter/cupertino.dart';

class BuildVacationTableForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return VacationItemForB_Manager();
      },
      itemCount: 15,
    );
  }

}