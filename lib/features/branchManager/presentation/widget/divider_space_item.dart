
import 'package:flutter/cupertino.dart';

import '../../../admin/presentation/widgets/space_item.dart';
import 'divider_item.dart';

class DividerSpaceItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        DividerItem(),
        SpaceItem(),
      ],
    );
  }

}