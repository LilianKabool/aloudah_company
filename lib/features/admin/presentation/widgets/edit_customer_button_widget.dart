import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/edit_customer_screen.dart';


class EditCustomerButtonWidget extends StatelessWidget{
  const EditCustomerButtonWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 40.h,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>const EditCustomerScreen()));
        },
        elevation: 0.0,
        heroTag: 'ec',
        backgroundColor: AppColors.darkBlue,
        child: const Icon(
          Icons.edit,
          color: AppColors.yellow,
        ),
      ),
    );
  }

}