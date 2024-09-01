
import 'package:aloudeh_company/features/admin/presentation/widgets/search_resulte_item_for_admin.dart';
import 'package:flutter/cupertino.dart';

import 'divider_between_list_elements.dart';

class BuildSearchResultesListForAdmin extends StatelessWidget{
  const BuildSearchResultesListForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return SearchResulteItemForAdmin();
      },
      separatorBuilder: (context, index) => const DividerBetweenListElements(),
      itemCount: 15,
    );
  }

}