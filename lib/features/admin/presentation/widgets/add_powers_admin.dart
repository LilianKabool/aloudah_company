import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

import 'add_employees_powers.dart';
import 'add_powers_text.dart';
import 'add_trucks_powers.dart';
import 'divider_item.dart';

class AddPowersAdmin extends StatelessWidget{
  const AddPowersAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: AddPowersText(),
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
      body: ListView(
        children: const [
          SpaceItem(),
          SpaceItem(),
          SpaceItem(),
          AddTrucksPowers(),
          SpaceItem(),
          SpaceItem(),
          AddEmployeesPowers(),
          SpaceItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.darkBlue,
        shape: const CircleBorder(),
        child: Text(
          'Save',
          style: TextStyle(
            color: AppColors.mediumBlue,
            fontSize: 17.sp,
            fontFamily: 'Bauhaus',
          ),
        ),
      ),
    );
  }

}