import 'package:flutter/cupertino.dart';

import 'customer_item_for_employee.dart';
import 'divider_item.dart';

class BuildCustomersListForEmployee extends StatelessWidget{
  const BuildCustomersListForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CustomerItemForEmployee();
      },
      separatorBuilder: (context, index) => const DividerItem(),
      itemCount: 15,
    );
  }

}