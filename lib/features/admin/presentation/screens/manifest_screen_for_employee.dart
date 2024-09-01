
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/build_manifest_table_for_employee.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/logo_image_widget.dart';
import '../widgets/manifest_table_header.dart';
import '../widgets/trip_record_text.dart';

class ManifestScreenForEmployee extends StatelessWidget{

  String manifest_id = 'DM-1-7099';

  ManifestScreenForEmployee({super.key});

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
      body: Column(
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
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                border: Border.all(
                  color: AppColors.darkBlue,
                ),
              ),
              margin:  const EdgeInsets.only(top: 20.0,left: 20.0),
              child: Row(
                children: [
                  const ManifestTableHeader(),
                  Container(
                    width: 1.h,
                    color: AppColors.darkBlue,
                  ),
                  const Expanded(
                    child: BuildManifestTableForEmployee(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
