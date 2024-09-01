import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';

class EditTruckInformation extends StatefulWidget{

  @override
  State<EditTruckInformation> createState() => _EditTruckInformationState();
}

class _EditTruckInformationState extends State<EditTruckInformation> {

  String truck_id = '825737';
  String truck_line  = 'Aleppo';
  String editedTruckID = '';
  String editedTruckLine = '';

  void _editID() {
    TextEditingController truck_id_controller = TextEditingController(text: truck_id);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit ID',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: truck_id_controller ,
            onChanged: (value) {
              editedTruckID = value;
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
                  truck_id = editedTruckID;
                });
                truck_id_controller.text = truck_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editLine() {
    TextEditingController truck_line_controller = TextEditingController(text: truck_line);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Line',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: truck_line_controller,
            onChanged: (value) {
              editedTruckLine = value;
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
                  truck_line = editedTruckLine;
                });
                truck_line_controller.text = truck_line;
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
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Truck Information',
            style: TextStyle(
              color: AppColors.yellow,
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
            ),
          ),
          SpaceItem(),
          Text(
            'Truck ID',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 44.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_id}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                  onPressed: (){
                    _editID();
                  },
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Text(
            'Truck Line',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 44.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_line}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                    onPressed: (){
                      _editLine();
                    },
                    icon: Icon(
                      Icons.edit,
                      color: AppColors.pureWhite,
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