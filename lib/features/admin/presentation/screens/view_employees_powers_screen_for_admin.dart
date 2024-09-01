
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';
import '../widgets/view_manifest_powers.dart';
import '../widgets/view_miscellaneous_powers.dart';
import '../widgets/view_powers_text.dart';
import '../widgets/view_reports_powers.dart';
import '../widgets/view_trips_powers.dart';
class ViewEmployeesPowersScreenForAdmin extends StatelessWidget{
  final int employeeId ;
  const ViewEmployeesPowersScreenForAdmin({super.key , required this.employeeId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: ViewPowersText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: ListView(
        children: [
          const SpaceItem(),
          ViewTripsPowers(),
          const SpaceItem(),
          Row(
            children: [
              Expanded(child: ViewManifestPowers()),
              Expanded(child: ViewReportsPowers()),
            ],
          ),
          const SpaceItem(),
          ViewMiscellaneousPowers(),
          const SpaceItem(),
        ],
      ),
    );
  }

}