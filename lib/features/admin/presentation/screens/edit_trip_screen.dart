
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/divider_space_item.dart';
import '../widgets/driver_truck_in_edit_trip_screen.dart';
import '../widgets/hello_enter_new_information_text.dart';
import '../widgets/information_in_edit_trip_screen.dart';
import '../widgets/save_button_in_edit_trip_screen.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_information_text.dart';
import '../widgets/user_info_in_edit_trip_screen.dart';

class EditTripScreen extends StatelessWidget{
  const EditTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TripInformationText(),
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
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SpaceItem(),
          HelloEnterNewInformationText(),
          DividerSpaceItem(),
          InformationInEditTripScreen(),
          DividerSpaceItem(),
          DriverTruckInEditTripScreen(),
          DividerSpaceItem(),
          UserInfoInEditTripScreen(),
          SpaceItem(),
          Align(
            alignment: Alignment.bottomCenter,
              child: SaveButtonInEditTripScreen(),
          ),
        ],
      ),
    );
  }

}