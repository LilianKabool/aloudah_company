
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class DeletePrintButtonsInEditT_Invoice extends StatelessWidget{

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
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteInvoice(context);
              },
              child: Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "dddd",
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTripScreen()));
              },
              child: Icon(
                Icons.print,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "iiii",
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.save_alt,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "save",
            ),
          ),
        ],
      ),
    );
  }

}