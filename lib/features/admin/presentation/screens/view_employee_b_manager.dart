import 'package:aloudeh_company/features/admin/presentation/screens/view_employees_powers_button_b_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/edit_delete_promote_emp_butons.dart';
import '../widgets/employee_information_text.dart';


class ViewEmployeeB_Manager extends StatelessWidget{
  const ViewEmployeeB_Manager({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
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
          const EditDeletePromoteEmpButtons(),
          const DividerBetweenListElements(),
          const ViewEmployeesPowersButtonB_Manager(),
          const DividerBetweenListElements(),
          //todo:
          //Expanded(child: ViewEmployeeInformation()),
        ],
      ),
    );
  }

}