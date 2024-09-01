import 'package:flutter/cupertino.dart';

import '../widgets/divider_between_list_elements.dart';
import '../widgets/edit_delete_evaluation_driver_buttons.dart';
import '../widgets/view_driver_information.dart';

class DriverInformationTabB_Manager extends StatelessWidget{
  final String driver_name ;
  final int driver_id ;
  // final String driver_gender;
  // final String driver_b_date ;
  // final String driver_b_place ;
  final int driver_phone ;
  // final String driver_mobile;
  final String driver_address ;
  // final int driver_vacations ;
  // final String driver_mother_name ;
  // final String driver_rank ;
  // final double driver_rate ;
  // final double driver_salary ;
  final String driver_emp_date ;
  // final String driver_resignation_date ;
  // final String d_certificate_type ;


  DriverInformationTabB_Manager({super.key , required this.driver_name, required this.driver_id, required this.driver_phone, required this.driver_address, required this.driver_emp_date});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight / 75,
        ),
        const EditDeleteEvaluationDriverButtons(),
        const DividerBetweenListElements(),
        Expanded(child: ViewDriverInformation(
          driver_address: driver_address,
          driver_emp_date:driver_emp_date ,
          driver_name: driver_name,
          driver_phone: driver_phone,
          driver_id: driver_id,
          // required this.d_certificate_type,
        // required this.driver_address,
        // required this.driver_b_date,
        // required this.driver_b_place,
        // required this.driver_emp_date,
        // required this.driver_gender,
        // required this.driver_mobile,
        // required this.driver_mother_name,
        // required this.driver_name,
        // required this.driver_phone,
        // required this.driver_rank,
        // required this.driver_rate,
        // required this.driver_resignation_date,
        // required this.driver_salary,
        // required this.driver_vacations,)
        ),),
        SizedBox(
          height: screenHeight / 75,
        ),
      ],
    );
  }

}