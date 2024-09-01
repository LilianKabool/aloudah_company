import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class SearchResulteItemForAdmin extends StatelessWidget{

  String trip_id = 'DM-135';
  String trip_dest = 'Aleppo';
  String trip_date = '13/07/2023';

  SearchResulteItemForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  trip_id,
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Text(
                trip_date,
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  trip_dest,
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  'View',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.yellow,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}