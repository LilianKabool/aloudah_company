import 'package:aloudeh_company/features/admin/presentation/widgets/archived_trip_search_button_admin.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/build_archived_trips_list_for_admin.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/widget/divider_item.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/effective_trip_search_button_admin.dart';

class ArchivedTripsForB_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SpaceItem(),
        // ArchivedTripSearchButtonAdmin(),
        // SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildArchivedTripsListForAdmin(),
        ),
      ],
    );
  }
}
