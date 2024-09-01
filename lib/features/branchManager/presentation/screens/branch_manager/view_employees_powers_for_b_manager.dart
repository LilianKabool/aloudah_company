
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';
import '../../widget/view_manifest_powers.dart';
import '../../widget/view_miscellaneous_powers.dart';
import '../../widget/view_powers_text.dart';
import '../../widget/view_reports_powers.dart';
import '../../widget/view_trips_powers.dart';
import 'edit_employees_powers_for_b_manager.dart';


class ViewEmployeesPowersForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: ViewPowersText(),
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
          ViewTripsPowers(),
          SpaceItem(),
          Row(
            children: [
              Expanded(child: ViewManifestPowers()),
              Expanded(child: ViewReportsPowers()),
            ],
          ),
          SpaceItem(),
          ViewMiscellaneousPowers(),
          SpaceItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>EditEmployeesPowersForB_Manager()));
        },
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Icon(
          Icons.edit,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }

}