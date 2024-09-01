import '../../../presentation/widget/divider_space_item.dart';
import '../../../presentation/widget/edit_notes_in_edit_truck_screen.dart';
import '../../../presentation/widget/edit_truck_information.dart';
import '../../../presentation/widget/edit_user_info_in_edit_truck_screen.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';
import '../../widget/edit_screens_text_intro.dart';
import '../../widget/truck_information_text.dart';

class EditTruckScreen extends StatelessWidget{
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
      body: ListView(
        children: [
          SpaceItem(),
          EditScreensTextIntro(),
          DividerSpaceItem(),
          EditTruckInformation(),
          DividerSpaceItem(),
          EditUserInfoInEditTruckScreen(),
          DividerSpaceItem(),
          EditNotesInEditTruckScreen(),
          SpaceItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Icon(
          Icons.save_alt,
          color: AppColors.pureWhite,
        ),
      ),
    );
  }

}