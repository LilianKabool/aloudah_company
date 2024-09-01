
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class DividerSpaceItem extends StatelessWidget{
  const DividerSpaceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpaceItem(),
        DividerItem(),
        SpaceItem(),
      ],
    );
  }

}