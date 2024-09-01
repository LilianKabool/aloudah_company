
import 'package:flutter/material.dart';

import 'archived_trip_item_for_employee.dart';
import 'divider_item.dart';

class BuildArchivedTripsListForEmployee extends StatelessWidget{
  const BuildArchivedTripsListForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedTripItemForEmployee();
      },
      separatorBuilder: (context, index) => const DividerItem(),
      itemCount: 15,
    );
  }

}