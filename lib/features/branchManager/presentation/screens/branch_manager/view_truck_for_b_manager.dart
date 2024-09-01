import 'package:aloudeh_company/features/branchManager/presentation/widget/build_truck_trips_list.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/widget/delete_edit_buttons_in_view_truck_b_manager.dart';
import '../../../presentation/widget/divider_space_item.dart';
import '../../../presentation/widget/truck_information_for_b_manger.dart';
import '../../../presentation/widget/truck_information_text.dart';
import '../../../presentation/widget/truck_trips_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';
import '../../widget/trip_driver_date_row.dart';

class ViewTruckForB_Manager extends StatelessWidget {
  final String truck_id;

  final String truck_line;

  final String truck_create;

  final String truck_last_edit;

  final String truck_editing_date;

  ViewTruckForB_Manager({
    required this .truck_id,
    required this .truck_line,
    required this .truck_create,
    required this .truck_last_edit,
    required this .truck_editing_date,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TruckInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SpaceItem(),
          DeleteEditButtonsInViewTruckB_Manager(),
          DividerSpaceItem(),
          TruckInformationForB_Manager(
            truck_create: truck_create,
            truck_editing_date: truck_editing_date,
            truck_id: truck_id,
            truck_last_edit: truck_last_edit,
            truck_line: truck_line,
          ),
          DividerItem(),
          SpaceItem(),
          TruckTripsIntro(),
          SpaceItem(),
          Expanded(
            child: BuildTruckTripsList(),
          ),
        ],
      ),
    );
  }
}