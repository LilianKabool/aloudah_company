
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/archived_trip_details_2_for_employee.dart';
import '../widgets/archived_trip_details_for_employee.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/logo_image_widget.dart';
import '../widgets/trip_record_text.dart';
import 'archived_manifest_screen_for_employee.dart';

class ArchivedTripRecordForEmployee extends StatelessWidget{

  String manifest_id = 'DM-1-7099';

  ArchivedTripRecordForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
          SizedBox(
            height: screenHeight/75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  $manifest_id',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                const LogoImageWidget(),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          ArchivedTripDetailsForEmployee(),
          ArchivedTripDetails2ForEmployee(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>ArchivedManifestScreenForEmployee()));
        },
        backgroundColor: AppColors.darkBlue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }

}