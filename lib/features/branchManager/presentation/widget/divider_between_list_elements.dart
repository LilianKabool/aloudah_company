import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class DividerBetweenListElements extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight/75,
        ),
        DividerItem(),
        SizedBox(
          height: screenHeight/75,
        ),
      ],
    );
  }

}