import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class AddBranchInformation extends StatelessWidget {
  var desk = TextEditingController();
  var address = TextEditingController();
  var mobile = TextEditingController();

  AddBranchInformation({
    super.key,
    required this.desk,
    required this.address,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
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
                width: screenWidth / 11.6,
              ),
              Expanded(
                child: TextFormField(
                  controller: desk,
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
                'Mobile',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 19,
              ),
              Expanded(
                child: TextFormField(
                  controller: mobile,
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
          const SpaceItem(),
          Row(
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
                width: screenWidth / 60,
              ),
              Expanded(
                child: TextFormField(
                  controller: address,
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
        ],
      ),
    );
  }
}
