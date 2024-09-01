
import 'package:aloudeh_company/features/branchManager/presentation/widget/truck_trips_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../admin/presentation/widgets/space_item.dart';

class BuildTruckTripsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TruckTripsItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

}