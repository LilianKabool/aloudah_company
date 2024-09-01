
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/cupertino.dart';

import 'driver_trip_item.dart';


class BuildDriverTripsList extends StatelessWidget{
  const BuildDriverTripsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return DriverTripItem();
      },
      separatorBuilder: (context, index) => const SpaceItem(),
      itemCount: 15,
    );
  }

}