import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/screens/branch_manager/view_branch_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/branches_list_intro_decoration.dart';
import '../../widget/space_item.dart';

class BranchesListForB_Manager extends StatefulWidget {
  @override
  State<BranchesListForB_Manager> createState() => _BranchesListForB_ManagerState();
}

class _BranchesListForB_ManagerState extends State<BranchesListForB_Manager> {

  String branches_name = 'Damascus';

  Widget BranchItemForB_Manager() => Container(
    height: 62.h,
    decoration: BoxDecoration(
      color: AppColors.lightBlue,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '${branches_name}',
          style: TextStyle(
            color: AppColors.yellow,
            fontFamily: 'bahnschrift',
            fontSize: 18.sp,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewBranchForB_Manager()));
          },
          icon: Icon(
            Icons.directions,
            color: AppColors.darkBlue,
          ),
        ),
      ],
    ),
  );

  Widget buildBranchesListForB_Manager() => ListView.separated(
    itemBuilder: (context, index) {
      return BranchItemForB_Manager();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Stack(
          children: [
            Container(
              height: screenHeight,
              decoration: BoxDecoration(
                color: AppColors.pureWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(400.r),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BranchesListIntroDecoration(),
                  Expanded(
                    child: buildBranchesListForB_Manager(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
