
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/view_branh_warehouse_information.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/warehouse_information_text.dart';

import '../../../presentation/widget/divider_space_item.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widget/divider_item.dart';
import '../../widget/edit_delete_warehouse_buttons.dart';

class ViewWarehouseForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: WarehouseInformationText(),
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
          SpaceItem(),
          SpaceItem(),
          //EditDeleteWarehouseButtons(),
          //DividerSpaceItem(),
          Expanded(
            child: ViewBranchWarehouseInformation(),
          ),
          SpaceItem(),
          SpaceItem(),
        ],
      ),
    );
  }
}