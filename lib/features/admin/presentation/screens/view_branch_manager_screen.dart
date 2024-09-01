
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/b_manager_information_text.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/edit_delete_b_manager_buttons.dart';
import '../widgets/space_item.dart';
import '../widgets/view_b_manager_information.dart';
import '../widgets/view_b_manager_powers_button_for_admin.dart';


class ViewBranchManagerScreen extends StatelessWidget{
  const ViewBranchManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: B_ManagerInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          const EditDeleteeB_ManagerButtons(),
          const DividerBetweenListElements(),
          Expanded(child: ViewB_ManagerInformation()),
          const ViewB_ManagerPowersButtonForAdmin(),
          const SpaceItem(),
        ],
      ),
    );
  }

}