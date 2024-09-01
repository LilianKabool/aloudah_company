

import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';

import 'branch_item_for_employee.dart';

class buildBranchesListForEmployee extends StatelessWidget{
  const buildBranchesListForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return BranchItemForEmployee();
      },
      separatorBuilder: (context, index) => const SpaceItem(),
      itemCount: 15,
    );
  }

}