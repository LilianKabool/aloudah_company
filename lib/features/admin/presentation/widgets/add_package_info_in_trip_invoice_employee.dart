import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class AddPackageInfoInTripInvoiceEmployee extends StatelessWidget{

  var num_of_packages = TextEditingController();
  var package_type = TextEditingController();
  var weight = TextEditingController();
  var size = TextEditingController();
  var content = TextEditingController();
  var marks = TextEditingController();

  AddPackageInfoInTripInvoiceEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Package Information',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Num Of Packages',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 20,
              ),
              Expanded(
                child: TextFormField(
                  controller: num_of_packages,
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
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Package Type',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8,
              ),
              Expanded(
                child: TextFormField(
                  controller: package_type,
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
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Content',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 4.2,
              ),
              Expanded(
                child: TextFormField(
                  controller: content,
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
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Weight',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.85,
              ),
              Expanded(
                child: TextFormField(
                  controller: weight,
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
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Marks',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.7,
              ),
              Expanded(
                child: TextFormField(
                  controller: marks,
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
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Size',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 3.23,
              ),
              Expanded(
                child: TextFormField(
                  controller: size,
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
              ),
            ],
          ),
        ],
      ),
    );
  }

}