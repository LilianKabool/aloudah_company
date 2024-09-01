import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/widget/build_prices_list_for_b_manager.dart';
import '../../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/divider_item.dart';
import '../../widget/prices_list_text.dart';

class PricesListScreenForB_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: PricesListText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
          Expanded(
            child: buildPricesListForB_Manager(),
          ),
        ],
      ),
    );
  }
}
