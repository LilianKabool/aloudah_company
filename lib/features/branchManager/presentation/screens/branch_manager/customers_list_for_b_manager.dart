import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_customer_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_between_list_elements.dart';

import '../../../../../core/constants/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../admin/presentation/widgets/customers_list_text_intro.dart';
import '../../widget/customers_list_text.dart';
import '../../widget/divider_item.dart';

class CustomersListForB_Manager extends StatefulWidget{

  @override
  State<CustomersListForB_Manager > createState() => _CustomersListForB_ManagerState();
}

class _CustomersListForB_ManagerState extends State<CustomersListForB_Manager > {

  String customerName = 'Seba Taleaa';

  Widget CustomerItemForB_Manager() => Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${customerName}',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
              fontSize: 16.sp,
            ),
          ),
        ),
        Container(
          height: 35.h,
          decoration: BoxDecoration(
            color: AppColors.yellow,
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewCustomerForB_Manager()));
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: AppColors.darkBlue,
            ),
          ),
        ),
      ],
    ),
  );

  Widget BuildCustomersListForB_Manager() => ListView.separated(
    itemBuilder: (context, index) {
      return CustomerItemForB_Manager();
    },
    separatorBuilder: (context, index) => DividerItem(),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: CustomersListText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          CustomersListTextIntro(),
          DividerBetweenListElements(),
          SearchInCustomersListForB_Manager(),
          DividerBetweenListElements(),
          Expanded(
            child: BuildCustomersListForB_Manager(),
          ),
        ],
      ),
    );
  }

  Widget SearchInCustomersListForB_Manager() => Container(
    height: 50.h,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextFormField(
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColors.lightBlue,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.darkBlue,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: AppColors.darkBlue,
          fontFamily: 'bahnschrift',
        ),
      ),
    ),
  );
}