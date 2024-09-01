
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_constants.dart';

class EnterTripInformation extends StatefulWidget {
  const EnterTripInformation({super.key});

  @override
  State<EnterTripInformation> createState() =>
      _EnterTripInformationState();
}

class _EnterTripInformationState extends State<EnterTripInformation> {
  var trip_id = TextEditingController();
  var manifest_id = TextEditingController();
  var truck_id = TextEditingController();
  var driver_name = TextEditingController();
  var trip_date = TextEditingController();
  var source = TextEditingController();
  var source_desk = TextEditingController();
  var destination = TextEditingController();
  var destination_desk = TextEditingController();
 // var trip_date = ' ';
  bool showDate = false;
  DateTime selectedDate = DateTime.now();
  var status = ["Temporary", "Closed", "Locked",""];
  var selectedStatus = "";

  void datePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate = value;
        trip_date = DateFormat('yyyy-MM-dd').format(selectedDate) as TextEditingController;
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'ID',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 4.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: trip_id,
                    cursorColor: AppColors.darkBlue,
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.mediumBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Manifest',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 12.2,
                ),
                Expanded(
                  child: TextFormField(
                    controller: manifest_id,
                    cursorColor: AppColors.mediumBlue,
                    style: const TextStyle(
                      color: AppColors.mediumBlue,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.darkBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 8,
                ),
                Expanded(
                  child: Container(
                    color: AppColors.yellow,
                    height: 40.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        dropdownColor: AppColors.yellow,
                        iconEnabledColor: AppColors.darkBlue,
                        items: status.map(
                              (String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          },
                        ).toList(),
                        onChanged: (thestatus) {
                          setState(() {
                            selectedStatus = (thestatus.toString());
                          });
                        },
                        value: selectedStatus,
                      ),
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
                  width: screenWidth / 6.9,
                ),
                Expanded(
                  child: TextFormField(
                    controller: truck_id,
                    cursorColor: AppColors.mediumBlue,
                    style: const TextStyle(
                      color: AppColors.mediumBlue,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.darkBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
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
                  width: screenWidth / 7.6,
                ),
                Expanded(
                  child: TextFormField(
                    controller: driver_name,
                    cursorColor: AppColors.pureBlack,
                    style: const TextStyle(
                      color: AppColors.pureBlack,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.yellow,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 5.9,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      datePicker(context);
                    },
                    child: Container(
                      height: 40.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: showDate
                            ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                            : const Text(
                          ' ',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Source',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 8.2,
                ),
                Expanded(
                  child: TextFormField(
                    controller: source,
                    cursorColor: AppColors.mediumBlue,
                    style: const TextStyle(
                      color: AppColors.mediumBlue,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.darkBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Desk',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 6.1,
                ),
                Expanded(
                  child: TextFormField(
                    controller: source_desk,
                    cursorColor: AppColors.pureBlack,
                    style: const TextStyle(
                      color: AppColors.pureBlack,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.yellow,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Destination',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 30,
                ),
                Expanded(
                  child: TextFormField(
                    controller: destination,
                    cursorColor: AppColors.mediumBlue,
                    style: const TextStyle(
                      color: AppColors.mediumBlue,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.darkBlue,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
            Row(
              children: [
                Text(
                  'Desk',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 6.1,
                ),
                Expanded(
                  child: TextFormField(
                    controller: destination_desk,
                    cursorColor: AppColors.pureBlack,
                    style: const TextStyle(
                      color: AppColors.pureBlack,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.yellow,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceItem(),
          ],
        ),
      ),
    );
  }
}
