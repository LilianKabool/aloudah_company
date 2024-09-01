
import 'package:flutter/material.dart';
import '../widgets/build_effective_trips_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/effective_trip_search_button_admin.dart';
import '../widgets/space_item.dart';

class EffectiveTripsForAdmin extends StatelessWidget {
   EffectiveTripsForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpaceItem(),
        EffevtiveTripSearchButtonAdmin(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildEffectiveTripsListForAdmin(),
        ),
      ],
    );
  }
}
