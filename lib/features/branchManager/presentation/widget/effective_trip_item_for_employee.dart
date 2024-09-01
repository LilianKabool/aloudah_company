
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class  EffectiveTripItemForEmployee extends StatelessWidget{

  String tripName = 'DM-135';

  _deleteTrip (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this Trip ?",
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
                  child: Text(
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
                  child: Text(
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
      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${tripName}',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
          ),
          Container(
            height: 35.h,
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: TextButton(
              onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripAfterInvoiceEmployee() /*ViewTripBeforInvoiceEmployee()*/));
              },
              child: Text(
                'View',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){
         //     Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTripScreen()));
            },
            child: Text(
              'Edit',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              _deleteTrip(context);
            },
            child: Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

}