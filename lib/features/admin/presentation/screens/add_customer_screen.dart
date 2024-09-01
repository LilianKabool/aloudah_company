import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/add_customer_text.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/hello_enter_new_information_text.dart';


class AddCustomerScreen extends StatefulWidget{
  const AddCustomerScreen({super.key});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {

  var customer_name = TextEditingController();
  var customer_id = TextEditingController();
  var customer_phone = TextEditingController();
  var customer_mobile = TextEditingController();
  var customer_address = TextEditingController();
  var customer_address_details = TextEditingController();
  var customer_notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddCustomerText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          const HelloEnterNewInformationText(),
          const DividerBetweenListElements(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
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
                        width: screenWidth/7,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_id,
                          keyboardType: TextInputType.number,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth/14.3,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_name,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth/17,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_phone,
                          keyboardType: TextInputType.phone,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Mobile',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth/19,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_mobile,
                          keyboardType: TextInputType.phone,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth/60,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_address,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth/60,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: customer_address_details,
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
                ),
                const DividerBetweenListElements(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notes',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight/110,
                      ),
                      Container(
                        height: 100.h,
                        color: AppColors.mediumBlue,
                        child: TextFormField(
                          controller: customer_notes,
                          cursorColor: AppColors.darkBlue,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 5,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
              ],
            ),
          ),
          AddCustomerButton(),
        ],
      ),
    );
  }
}

Widget AddCustomerButton() => Container(
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(37.r),
    color: AppColors.darkBlue,
  ),
  child: FloatingActionButton(
    onPressed: (){},
    backgroundColor: AppColors.darkBlue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(37.r),
        topLeft: Radius.circular(37.r),
      ),
    ),
    child: Text(
      'Add Customer',
      style: TextStyle(
        fontFamily: 'bahnschrift',
        fontWeight: FontWeight.bold,
        fontSize: 17.0.sp,
        color: AppColors.mediumBlue,
      ),
    ),
  ),
);