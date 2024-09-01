import 'package:flutter/material.dart';

import '../widgets/build_drivers_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/search_driver_button.dart';
import '../widgets/space_item.dart';


class DriversListForAdmin extends StatelessWidget{
  final int branchId ;
  DriversListForAdmin({required this.branchId});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SpaceItem(),
        SearchDriverButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildDriversListForAdmin(branchId:branchId),
        ),
      ],
    );
  }

}