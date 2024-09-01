import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class AddTripsPowers extends StatefulWidget{
  const AddTripsPowers({super.key});

  @override
  State<AddTripsPowers> createState() => _AddTripsPowersState();
}

class _AddTripsPowersState extends State<AddTripsPowers> {

  bool _addChecked = false;
  bool _editChecked = false;
  bool _deleteChecked = false;
  bool _drawerChecked = false;
  bool _emailChecked = false;
  bool _tripsListChecked = false;
  bool _printRoadChecked = false;
  bool _printTripsChecked = false;
  bool _editCloseChecked = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trips',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 250.h,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightBlue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _addChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _addChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _tripsListChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _tripsListChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Trips List',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _editChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _editChecked= value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'ُEdit',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _printRoadChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _printRoadChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Print Road',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _deleteChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _deleteChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Delete',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _printTripsChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _printTripsChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Print Trips',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _drawerChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _drawerChecked = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Drawer',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: AppColors.darkBlue,
                              value: _editCloseChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _editCloseChecked= value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Edit Close',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontFamily: 'Bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.darkBlue,
                        value: _emailChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _emailChecked = value!;
                          });
                        }),
                    Expanded(
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'Bahnschrift',
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}