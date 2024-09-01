
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class  TruckItemForEmployee extends StatelessWidget{

  String TruckName = 'Aleppo';
  String TruckNumber = '32547896';

  TruckItemForEmployee({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              TruckName,
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              TruckNumber,
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTruckForEmployee()));
            },
            child: Text(
              'view',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

}