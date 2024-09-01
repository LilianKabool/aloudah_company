
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'add_manifest_powers.dart';
import 'add_miscellaneous_powers.dart';
import 'add_powers_text.dart';
import 'add_reports_powers.dart';
import 'add_trips_powers.dart';
import 'divider_item.dart';

class AddPowersB_Manager extends StatelessWidget{
  const AddPowersB_Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddPowersText(),
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
          const AddTripsPowers(),
          const SpaceItem(),
          const Row(
            children: [
              Expanded(child: AddManifestPowers()),
              Expanded(child: AddReportsPowers()),
            ],
          ),
          const SpaceItem(),
          const AddMiscellaneousPowers(),
          const SpaceItem(),
          SaveButton(),
        ],
      ),
    );
  }

  Widget SaveButton() => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(37.r),
      color: AppColors.darkBlue,
    ),
    child: FloatingActionButton(
      onPressed: (){},
      backgroundColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(37.r),
          topLeft: Radius.circular(37.r),
        ),
      ),
      child: Text(
        'Save',
        style: TextStyle(
          fontFamily: 'bahnschrift',
          fontWeight: FontWeight.bold,
          fontSize: 17.0.sp,
          color: AppColors.mediumBlue,
        ),
      ),
    ),
  );
}