
import '../../presentation/screens/branch_manager/manifest_screen_for_b_manager.dart';
import '../../presentation/widget/divider_between_list_elements.dart';
import '../../presentation/widget/open_trip_details_for_b_manager.dart';
import '../../presentation/widget/open_trip_detials_2_for_b_manager.dart';
import '../../presentation/widget/logo_image_widget.dart';
import '../../presentation/widget/trip_record_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/branch_manager/closed_manifest_for_b_manager.dart';
import 'closed_trip_details_2_for_b_manager.dart';
import 'closed_trip_details_for_b_manager.dart';
import 'divider_item.dart';

class ClosedTripRecordForB_Manager extends StatelessWidget{

 final  String manifest_id ;
 final String trip_date;

 final String trip_status;
 final String trip_truck;

 final String trip_driver;
 final String branch;

 final String destination;

 final String creator_name;

 final String editor_name;
 final String trip_number;

 ClosedTripRecordForB_Manager({
   required this.trip_status,
   required this.trip_number,
   required this.trip_truck,
   required this.trip_driver,
   required this.branch,
   required this.destination,
   required this.creator_name,
   required this.editor_name,
   required this.trip_date,
   required this.manifest_id
 });


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
          SizedBox(
            height: screenHeight/75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  ${manifest_id}',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          ClosedTripDetailsForB_Manager(
            trip_driver: trip_driver,
             trip_truck: trip_truck,
            trip_status: trip_status,
            trip_date: trip_date,
            editor_name: editor_name,
            creator_name: creator_name,
            branch: branch,
            destination: destination,


          ),

          //todo
          ClosedTripDetails2ForB_Manager(trip_number:trip_number),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //todo:
          Navigator.push(context, MaterialPageRoute(builder:(context)=>ClosedManifestForB_Manager()));
        },
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }

}