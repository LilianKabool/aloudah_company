import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class EditSourceDestInT_InvoiceScreen extends StatefulWidget {
  const EditSourceDestInT_InvoiceScreen({super.key});

  @override
  State<EditSourceDestInT_InvoiceScreen> createState() => _EditSourceDestInT_InvoiceScreenState();
}

class _EditSourceDestInT_InvoiceScreenState extends State<EditSourceDestInT_InvoiceScreen> {

  String source = 'Damascus';
  String destination = 'Daraa';
  String editedSource = '';
  String editedDest = '';

  void _editSource() {
    TextEditingController sourceController = TextEditingController(text: source);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Source',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: sourceController,
            onChanged: (value) {
              editedSource = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  source = editedSource;
                });
                sourceController.text = source;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editDest() {
    TextEditingController destinationController = TextEditingController(text: destination);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Destination',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: destinationController,
            onChanged: (value) {
              editedDest = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  destination = editedDest;
                });
                destinationController.text = destination;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Source',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureBlack,
                    fontSize: 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _editSource();
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.darkBlue,
                    ),
                    child: Center(
                      child: Text(
                        source,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Destination',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureBlack,
                    fontSize: 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _editDest();
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.yellow,
                    ),
                    child: Center(
                      child: Text(
                        destination,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
