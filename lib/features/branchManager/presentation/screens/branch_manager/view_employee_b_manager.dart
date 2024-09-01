import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/screens/branch_manager/view_employees_powers_button_b_manager.dart';
import '../../../presentation/widget/divider_between_list_elements.dart';
import '../../../presentation/widget/edit_delete_evaluate_emp_butons.dart';
import '../../../presentation/widget/employee_information_text.dart';
import '../../../presentation/widget/view_employee_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/divider_item.dart';


class ViewEmployeeB_Manager extends StatelessWidget{
  ViewEmployeeB_Manager(
      {
        required this.employee_name,
         required this.employee_id,
        // required this.employee_gender,
        //  required this.employee_b_date,
        //  required this.employee_b_place,
         required this.employee_phone,
        // required this.employee_mobile,
       //  required this.employee_address,
         // required this.employee_vacations,
         // required this.employee_mother_name,
         // required this.employee_rank,
         // required this.employee_rate,
         // required this.employee_salary,
         // required this.employee_emp_date,
         // required this.employee_resignation_date
  });
  final String  employee_name ;
  final int employee_id ;
   var employee_gender='male';
   var employee_b_date='14/2/0/2002';
   var employee_b_place='damas';
  final int employee_phone ;
  String  employee_mobile="0968265914" ;
  String  employee_address='jaramana' ;
   int employee_vacations =1;
   String  employee_mother_name='mom' ;
   String  employee_rank='employee' ;
   double  employee_rate=4.5 ;
   double  employee_salary =5.500;
   String  employee_emp_date ='12/2/2020';
   String  employee_resignation_date ='1/2/2020';
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          EditDeleteEvaluateEmpButtons(),
          DividerBetweenListElements(),
          ViewEmployeesPowersButtonB_Manager(),
          DividerBetweenListElements(),
          Expanded(child: ViewEmployeeInformation(
           employee_address: employee_address,
          employee_b_date:employee_b_date ,
          employee_b_place:employee_b_place ,
          employee_emp_date:employee_emp_date ,
          employee_gender:employee_gender ,
          employee_id:employee_id ,
          employee_mobile: employee_mobile,
          employee_mother_name:employee_mother_name ,
          employee_name:employee_name ,
          employee_phone:employee_phone ,
          employee_rank: employee_rank,
          employee_rate: employee_rate,
          employee_resignation_date:employee_resignation_date ,
           employee_salary: employee_salary,
          employee_vacations:employee_vacations ,
          )),
        ],
      ),
    );
  }


}