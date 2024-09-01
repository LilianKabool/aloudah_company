import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class DriverTripItem extends StatelessWidget{

  String trip = 'DM-1-600';
  String destination = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){
          //Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripB_Manager()));
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${trip}',
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${destination}',
                style: TextStyle(
                  color: AppColors.pureBlack,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${date}',
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

}