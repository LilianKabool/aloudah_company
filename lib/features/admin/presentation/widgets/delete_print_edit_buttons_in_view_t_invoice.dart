
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/edit_trip_invoice_screen.dart';

class DeletePrintEditButtonsInViewTripInvoice extends StatelessWidget{
  const DeletePrintEditButtonsInViewTripInvoice({super.key});


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
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              heroTag: "ddd",
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
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTripScreen())); هاد لطباعة الإيصال
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "iii",
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const EditTripInvoiceScreen()));
              },
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "eee",
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