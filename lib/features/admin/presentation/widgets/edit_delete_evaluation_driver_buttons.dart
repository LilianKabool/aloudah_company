
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'edit_driver_b_manager.dart';

class EditDeleteEvaluationDriverButtons extends StatefulWidget{
  const EditDeleteEvaluationDriverButtons({super.key});


  @override
  State<EditDeleteEvaluationDriverButtons> createState() => _EditDeleteEvaluationDriverButtonsState();
}

class _EditDeleteEvaluationDriverButtonsState extends State<EditDeleteEvaluationDriverButtons> {

  _deleteDriver (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this driver ?",
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

  int rating = 0;

  void updateRating(int newRating) {
    setState(() {
      rating = newRating;
    });
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
                _deleteDriver(context);
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const EditDriverB_Manager()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              child: const Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= 5; i++)
                GestureDetector(
                  onTap: () => updateRating(i),
                  child: Icon(
                    Icons.star,
                    //size: 40,
                    color: i <= rating ? AppColors.yellow : AppColors.mediumBlue,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}