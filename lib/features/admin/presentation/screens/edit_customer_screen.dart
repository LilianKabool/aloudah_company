
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/customer_information_text.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/edit_customer_info_for_employee.dart';
import '../widgets/edit_notes_in_edit_customer_screen.dart';
import '../widgets/edit_screens_text_intro.dart';
import '../widgets/edit_user_info_in_edit_customer_screen.dart';

class EditCustomerScreen extends StatefulWidget {
  const EditCustomerScreen({super.key});

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: CustomerInformationText(),
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
            height: screenHeight / 75,
          ),
          const EditScreensTextIntro(),
          SizedBox(
            height: screenHeight / 75,
          ),
          const DividerItem(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: screenHeight / 75,
                ),
                const EditCustomerInfoForEmployee(),
                EditNotesInEditCustomerScreen(),
                const DividerBetweenListElements(),
                const EditUserInfoInEditCustomerScreen(),
                SizedBox(
                  height: screenHeight / 75,
                ),
              ],
            ),
          ),
          SaveButton(),
        ],
      ),
    );
  }
}

Widget SaveButton() => Container(
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(37.r),
    color: AppColors.darkBlue,
  ),
  child: FloatingActionButton(
    onPressed: () {},
    backgroundColor: AppColors.darkBlue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(37.r),
        topLeft: Radius.circular(37.r),
      ),
    ),
    child: Text(
      'Save',
      style: TextStyle(
        fontFamily: 'bahnschrift',
        fontWeight: FontWeight.bold,
        fontSize: 17.0.sp,
        color: AppColors.mediumBlue,
      ),
    ),
  ),
);