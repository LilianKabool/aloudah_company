import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class EditNotesInEditTruckScreen extends StatefulWidget{

  @override
  State<EditNotesInEditTruckScreen> createState() => _EditNotesInEditTruckScreenState();
}

class _EditNotesInEditTruckScreenState extends State<EditNotesInEditTruckScreen> {

  var notes = "no thing";
  String editedNotes = '';

  void _editNotes() {
    TextEditingController notes_controller = TextEditingController(text: notes);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Notes',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: notes_controller,
            onChanged: (value) {
              editedNotes  = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  notes = editedNotes ;
                });
                notes_controller.text = notes;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          GestureDetector(
            onTap: (){
              _editNotes();
            },
            child: Container(
              height: 100.h,
              width: double.infinity,
              color: AppColors.mediumBlue,
              padding: EdgeInsets.all(10.0),
              child: Text(
                '${notes}',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}