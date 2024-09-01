import 'package:aloudeh_company/features/admin/presentation/widgets/search_in_customer_list_for_admin.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import 'build_customers_list_for_admin.dart';
import 'customers_list_text.dart';
import 'customers_list_text_intro.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';


class CustomersListForAdmin extends StatefulWidget{
  const CustomersListForAdmin({super.key});


  @override
  State<CustomersListForAdmin> createState() => _CustomersListForAdminState();
}

class _CustomersListForAdminState extends State<CustomersListForAdmin> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: CustomersListText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          const CustomersListTextIntro(),
          const DividerBetweenListElements(),
          const SearchInCustomersListForAdmin(),
          const DividerBetweenListElements(),
          const Expanded(
            child: BuildCustomersListForAdmin(),
          ),
        ],
      ),
    );
  }
}