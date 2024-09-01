import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/edit_trip_screen.dart';
import '../screens/tracking_screen_for_employee.dart';


class TrackingEditDeleteInvoiceButtonsInViewTrip extends StatelessWidget{
  const TrackingEditDeleteInvoiceButtonsInViewTrip({super.key});


  _deleteTrip (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this trip ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteTrip(context);
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "dd",
              child: const Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
               // Navigator.push(context, MaterialPageRoute(builder:(context)=>TrackingScreenForEmployee())); هاد لطباعة الفاتورة منعمله بعدين
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "ii",
              child: const Icon(
                Icons.print,
                color: AppColors.yellow,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const TrackingScreenForEmployee()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "tt",
              child: const Icon(
                Icons.location_on,
                color: AppColors.yellow,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const EditTripScreen()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "ee",
              child: const Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }

}