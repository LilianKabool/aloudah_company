import '../../../presentation/widget/add_manifest_powers.dart';
import '../../../presentation/widget/add_miscellaneous_powers.dart';
import '../../../presentation/widget/add_powers_text.dart';
import '../../../presentation/widget/add_reports_powers.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/colors_constants.dart';

import '../../widget/add_trips_powers.dart';
import '../../widget/divider_item.dart';

class AddPowersB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddPowersText(),
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
          AddTripsPowers(),
          SpaceItem(),
          Row(
            children: [
              Expanded(child: AddManifestPowers()),
              Expanded(child: AddReportsPowers()),
            ],
          ),
          SpaceItem(),
          AddMiscellaneousPowers(),
          SpaceItem(),
          SaveButton(),
        ],
      ),
    );
  }

  Widget SaveButton() => Container(
    width: double.infinity,
    child: FloatingActionButton(
      onPressed: (){},
      child: Text(
        'Save',
        style: TextStyle(
          fontFamily: 'bahnschrift',
          fontWeight: FontWeight.bold,
          fontSize: 17.0.sp,
          color: AppColors.mediumBlue,
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(37.r),
          topLeft: Radius.circular(37.r),
        ),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(37.r),
      color: AppColors.darkBlue,
    ),
  );
}