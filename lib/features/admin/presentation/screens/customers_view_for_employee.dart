
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/customer_information_text.dart';
import '../widgets/delete_customer_button_widget.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/edit_customer_button_widget.dart';
import '../widgets/logo_image_widget.dart';
import '../widgets/view_customer_info_for_employee.dart';

class CustomersViewForEmployee extends StatefulWidget {
  const CustomersViewForEmployee({super.key});

  @override
  State<CustomersViewForEmployee> createState() => _CustomersViewForEmployeeState();
}

class _CustomersViewForEmployeeState extends State<CustomersViewForEmployee> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: CustomerInformationText(),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeleteCustomerButtonWidget(),
                LogoImageWidget(),
                EditCustomerButtonWidget(),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          Expanded(child: ViewCustomerInfoForEmployee()),
        ],
      ),
    );
  }
}
