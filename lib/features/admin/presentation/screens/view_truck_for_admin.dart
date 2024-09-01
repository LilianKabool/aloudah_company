import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';
import '../widgets/trip_driver_date_row.dart';
import '../widgets/truck_information_for_employee.dart';
import '../widgets/truck_information_text.dart';


class ViewTruckForAdmin extends StatelessWidget{

  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  ViewTruckForAdmin({super.key});

  Widget RowTableItem(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){
         // Navigator.push(context, MaterialPageRoute(builder:(context)=>EffectiveTripRecordForAdmin()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                trip,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                driver,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                date,
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTripsTable(){
    return ListView.separated(
      itemBuilder: (context, index) {
        return RowTableItem();
      },
      separatorBuilder: (context, index) => const SpaceItem(),
      itemCount: 15,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TruckInformationText(),
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
          const SpaceItem(),
          TruckInformationForEmployee(),
          const DividerItem(),
          const SpaceItem(),
          const TripDriverDateRow(),
          const SpaceItem(),
          Expanded(
            child: buildTripsTable(),
          ),
        ],
      ),
    );
  }

}