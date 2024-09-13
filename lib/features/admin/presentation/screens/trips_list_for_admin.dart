
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/trips_list_text.dart';
import 'archived_trips_for_admin.dart';
import 'effective_trips_for_admin.dart';

class TripsListForAdmin extends StatelessWidget {
  const TripsListForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: const Align(
            alignment: Alignment.centerRight,
            child: TripsListText(),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.unarchive,), text: "Effective",),
              Tab(icon: Icon(Icons.archive, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body:  TabBarView(
          children: [
            EffectiveTripsForAdmin(),
            ArchivedTripsForBM(),
          ],
        ),
      ),
    );
  }
}
