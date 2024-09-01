
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';
import 'effective_trip_item_for_employee.dart';

class BuildEffectiveTripsListForEmployee extends StatelessWidget{
  const BuildEffectiveTripsListForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return EffectiveTripItemForEmployee();
      },
      separatorBuilder: (context, index) => const DividerItem(),
      itemCount: 15,
    );
  }

}