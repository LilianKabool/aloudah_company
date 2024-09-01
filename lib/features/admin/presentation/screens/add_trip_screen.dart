import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/add_trip_text.dart';
import '../widgets/divider_item.dart';
import '../widgets/enter_trip_information.dart';
import '../widgets/hello_enter_new_information_text.dart';
import '../widgets/space_item.dart';
import '../widgets/thank_u_text.dart';


class AddTripScreen extends StatelessWidget{
  const AddTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddTripText(),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SpaceItem(),
          const HelloEnterNewInformationText(),
          const SpaceItem(),
          const DividerItem(),
          const Expanded(child: EnterTripInformation()),
          const DividerItem(),
          const ThankUText(),
          const SpaceItem(),
          AddTripButton(),
        ],
      ),
    );
  }

  Widget AddTripButton() => Container(
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
        'Add Trip',
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