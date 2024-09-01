
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class DeletePrintSaveButtonsInEditT_Invoice extends StatelessWidget{
  const DeletePrintSaveButtonsInEditT_Invoice({super.key});


  _deleteInvoice (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this invoice ?",
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
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteInvoice(context);
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "dddd",
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
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTripScreen()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "iiii",
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
              onPressed: () {},
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "save",
              child: const Icon(
                Icons.save_alt,
                color: AppColors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }

}