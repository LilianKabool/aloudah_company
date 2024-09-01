
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/space_item.dart';


class TripsSearchScreen extends StatefulWidget {
  const TripsSearchScreen({super.key});

  @override
  State<TripsSearchScreen> createState() => _TripsSearchScreenState();
}

class _TripsSearchScreenState extends State<TripsSearchScreen> {
  var trip_id = TextEditingController();
  var desk = TextEditingController();
  var destination = TextEditingController();
  var tripStatus = ["Temporary", "Locked", ""];
  var selectedStatus = "";
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  var date_to = '';
  var date_from = '';
  bool showDate = false;

  void datePicker1(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate1 = value;
        date_from = DateFormat('yyyy-MM-dd').format(selectedDate1);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker2(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate2 = value;
        date_to = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Trip ID',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: trip_id,
              cursorColor: AppColors.darkBlue,
              decoration: const InputDecoration(
                isDense: true,
                filled: true,
                fillColor: AppColors.mediumBlue,
                border: InputBorder.none,
              ),
            ),
            const SpaceItem(),
            Text(
              'Desk',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: desk,
              cursorColor: AppColors.darkBlue,
              decoration: const InputDecoration(
                isDense: true,
                filled: true,
                fillColor: AppColors.mediumBlue,
                border: InputBorder.none,
              ),
            ),
            const SpaceItem(),
            Text(
              'Destination',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: destination,
              cursorColor: AppColors.darkBlue,
              decoration: const InputDecoration(
                isDense: true,
                filled: true,
                fillColor: AppColors.mediumBlue,
                border: InputBorder.none,
              ),
            ),
            const SpaceItem(),
            Text(
              'Date From',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {
                datePicker1(context);
              },
              child: Container(
                height: 40.h,
                color: AppColors.mediumBlue,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: showDate
                      ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate1),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                      : Text(
                          date_from,
                        ),
                ),
              ),
            ),
            const SpaceItem(),
            Text(
              'Date To',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {
                datePicker2(context);
              },
              child: Container(
                height: 40.h,
                color: AppColors.mediumBlue,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: showDate
                      ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate2),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                      : Text(
                          date_to,
                        ),
                ),
              ),
            ),
            const SpaceItem(),
            Text(
              'Trip Status',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 17.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              color: AppColors.mediumBlue,
              height: 40.h,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(10.0),
                  dropdownColor: AppColors.pureWhite,
                  iconEnabledColor: AppColors.darkBlue,
                  items: tripStatus.map(
                        (String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    },
                  ).toList(),
                  onChanged: (tripStatus) {
                    setState(() {
                      selectedStatus = (tripStatus.toString());
                    });
                  },
                  value: selectedStatus,
                ),
              ),
            ),
            const SpaceItem(),
            const SpaceItem(),
            SearchButton(),
          ],
        ),
      ),
    );
  }

  Widget SearchButton() => Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: AppColors.darkBlue,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.darkBlue,
          heroTag: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text(
            'Search',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
              color: AppColors.mediumBlue,
            ),
          ),
        ),
      );
}
