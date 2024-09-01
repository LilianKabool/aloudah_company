
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/divider_item.dart';
import '../widgets/employee_information_text.dart';
import '../widgets/space_item.dart';
import '../widgets/view_archived_employee_information.dart';

class ViewArchivedEmployeeForAdmin extends StatelessWidget{
  const ViewArchivedEmployeeForAdmin({super.key});

  // final int employeeId ;
  // ViewArchivedEmployeeForAdmin({required this.employeeId});
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
          Expanded(child: ViewArchivedEmployeeInformation()),
        //todo: edit
       //  ViewEmployeesPowersButtonForAdmin(employeeId: employeeId,),
          const SpaceItem(),
        ],
      ),
    );
  }

}