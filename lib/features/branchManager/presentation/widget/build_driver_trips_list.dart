
import 'package:aloudeh_company/features/branchManager/presentation/widget/driver_trip_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../admin/presentation/widgets/space_item.dart';


class BuildDriverTripsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return DriverTripItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

}