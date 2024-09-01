
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trip_destination_date_row.dart';
import 'package:flutter/material.dart';

import 'build_driver_trips_list.dart';

class DriverTripsTabB_Manager extends StatelessWidget{
  final int driverId;
  DriverTripsTabB_Manager({required this.driverId});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpaceItem(),
        TripDestinationDateRow(),
        SpaceItem(),
        Expanded(child: BuildDriverTripsList()),
        SpaceItem(),
      ],
    );
  }

}