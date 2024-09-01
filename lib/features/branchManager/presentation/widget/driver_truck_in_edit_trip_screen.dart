import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class DriverTruckInEditTripScreen extends StatefulWidget{

  @override
  State<DriverTruckInEditTripScreen> createState() => _DriverTruckInEditTripScreenState();
}

class _DriverTruckInEditTripScreenState extends State<DriverTruckInEditTripScreen> {

  String driver = 'Mohammed Hwaidi';
  String truck = 'Aleppo-123456';
  String editedDriver = '';
  String editedTruck = '';

  void _editDriver() {
    TextEditingController driver_controller = TextEditingController(text: driver);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Driver',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: driver_controller ,
            onChanged: (value) {
              editedDriver= value;
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
                  driver = editedDriver;
                });
                driver_controller.text = driver;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editTruck() {
    TextEditingController truck_controller = TextEditingController(text: truck);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Truck',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: truck_controller ,
            onChanged: (value) {
              editedTruck= value;
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
                  truck = editedTruck;
                });
                truck_controller.text = truck;
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
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Driver & Truck',
            style: TextStyle(
              color: AppColors.yellow,
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
            ),
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Driver',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 7.2,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.darkBlue,
                  child: Center(
                    child: Text(
                      '${driver}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth / 30,
              ),
              CircleAvatar(
                backgroundColor: AppColors.yellow,
                child: IconButton(
                  onPressed: (){
                    _editDriver();
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
          Row(
            children: [
              Text(
                'Truck',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 6.4,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.yellow,
                  child: Center(
                    child: Text(
                      '${truck}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                        color: AppColors.pureBlack,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth / 30,
              ),
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                  onPressed: (){
                    _editTruck();
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