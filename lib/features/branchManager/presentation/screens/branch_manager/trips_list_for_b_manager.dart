import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/screens/branch_manager/archived_trips_for_b_manager.dart';
import '../../../presentation/screens/branch_manager/open_trips_for_b_manager.dart';
import '../../../presentation/widget/trips_list_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'closed_trips_for_b_manager.dart';

class TripsListForB_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: Align(
            alignment: Alignment.centerRight,
            child: TripsListText(),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.lock_open,), text: "Open",),
              Tab(icon: Icon(Icons.lock_outline,), text: "Closed",),
              Tab(icon: Icon(Icons.archive_outlined, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body: TabBarView(
          children: [
            OpenTripsForB_Manager(),
            ClosedTripsForB_Manager(),
            //todo: هي  بلا ربط و تعديل من صبا
            ArchivedTripsForB_Manager(),
          ],
        ),
      ),
    );
  }
}
