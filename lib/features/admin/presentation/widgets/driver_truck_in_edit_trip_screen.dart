import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';



class DriverTruckInEditTripScreen extends StatefulWidget{
  const DriverTruckInEditTripScreen({super.key});


  @override
  State<DriverTruckInEditTripScreen> createState() => _DriverTruckInEditTripScreenState();
}

class _DriverTruckInEditTripScreenState extends State<DriverTruckInEditTripScreen> {

  String driver = 'Mohammed Hwaidi';
  String truck = 'Aleppo-123456';
  String editedDriver = '';
  String editedTruck = '';

  void _editDriver() {
    TextEditingController driverController = TextEditingController(text: driver);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Driver',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: driverController ,
            onChanged: (value) {
              editedDriver= value;
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
                  driver = editedDriver;
                });
                driverController.text = driver;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editTruck() {
    TextEditingController truckController = TextEditingController(text: truck);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Truck',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: truckController ,
            onChanged: (value) {
              editedTruck= value;
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
                  truck = editedTruck;
                });
                truckController.text = truck;
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
          const SpaceItem(),
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
                      driver,
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
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                      truck,
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
                  icon: const Icon(
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