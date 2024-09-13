
import 'package:flutter/material.dart';

import '../widgets/archived_trip_search_button_admin.dart';
import '../widgets/build_archived_trips_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';

class ArchivedTripsForBM extends StatelessWidget {
  const ArchivedTripsForBM({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpaceItem(),
        // ArchivedTripSearchButtonAdmin(),
        // SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildArchivedTripsListForBM(),
        ),
      ],
    );
  }
}
