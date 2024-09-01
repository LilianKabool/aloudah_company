import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/edit_delete_powers_buttons_for_admin.dart';
import '../widgets/space_item.dart';
import '../widgets/view_employees_powers.dart';
import '../widgets/view_powers_text.dart';
import '../widgets/view_trucks_powers.dart';


class ViewPowersAdmin extends StatelessWidget {
  const ViewPowersAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: ViewPowersText(),
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ViewTrucksPowers(),
                const SpaceItem(),
                const SpaceItem(),
                ViewEmployeesPowers(),
                const SpaceItem(),
              ],
            ),
          ),
          const EditDeletePowersButtonsForAdmin(),
        ],
      ),
    );
  }
}
