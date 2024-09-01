import 'package:aloudeh_company/features/admin/presentation/widgets/trucks_list_text.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trucks_list_text_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'build_trucks_list_for_employee.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';

class TrucksListForAdmin extends StatefulWidget {
  final int branchId;

  const TrucksListForAdmin({super.key, required this.branchId});

  @override
  State<TrucksListForAdmin> createState() => _TrucksListForAdminState();
}

class _TrucksListForAdminState extends State<TrucksListForAdmin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TrucksListText(),
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
          const TrucksListTextIntro(),
          const DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 45.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: AppColors.darkBlue,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: AppColors.lightBlue,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: AppColors.darkBlue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: AppColors.darkBlue,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.darkBlue,
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          color: AppColors.darkBlue,
                          fontFamily: 'bahnschrift',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 75,
          ),
          const DividerItem(),
          Expanded(
            child: BuildTrucksListForEmployee(branchName: widget.branchId),
          ),
        ],
      ),
    );
  }
}
