import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'add_manager_text.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';
import 'enter_bManager_information.dart';

class AddBranchManager extends StatelessWidget {
  var address = TextEditingController();
  var desk = TextEditingController();
  var phone = TextEditingController();
  var nationalId = TextEditingController();
  var managerName = TextEditingController();
  var branchId = TextEditingController();
  var email = TextEditingController();
  var phoneNumber = TextEditingController();
  var gender = TextEditingController();
  var motherName = TextEditingController();
  var dateOfBirth = TextEditingController();
  var managerAddress = TextEditingController();
  var salary = TextEditingController();
  var rank = TextEditingController();

  AddBranchManager(this.branchId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddManagerText(),
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
        children: [
          const SpaceItem(),
          Text(
            'Please Enter Manager Information',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const DividerBetweenListElements(),
          const SpaceItem(),
          Expanded(child: EnterBManagerInformation(branchId: branchId)),
        ],
      ),
    );
  }


}