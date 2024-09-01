import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class AddSourceDestInTripInvoiceForEmployee extends StatelessWidget {
  var source= TextEditingController();
  var destination = TextEditingController();

  AddSourceDestInTripInvoiceForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                TextFormField(
                  controller: source,
                  cursorColor: AppColors.darkBlue,
                  style: const TextStyle(
                    color: AppColors.pureWhite,
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.darkBlue,
                    border: InputBorder.none,
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
                TextFormField(
                  controller: destination,
                  cursorColor: AppColors.darkBlue,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
