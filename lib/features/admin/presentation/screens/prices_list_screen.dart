import 'package:aloudeh_company/features/admin/presentation/controllers/get_prices_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../widgets/build_prices_list_for_admin.dart';
import '../widgets/divider_item.dart';
import '../widgets/prices_list_text.dart';
import '../widgets/space_item.dart';

class PricesListScreen extends StatefulWidget {
  const PricesListScreen({super.key});

  @override
  State<PricesListScreen> createState() => _PricesListScreenState();
}

class _PricesListScreenState extends State<PricesListScreen> {
  late GetTypePriceListPaginatedCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTypePriceListPaginatedCubit>();
    cubit.emitGetTypesPriceList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: PricesListText(),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: const Column(
        children: [
          SpaceItem(),
          Expanded(
            child: buildPricesListForAdmin(),
          ),
        ],
      ),
    );
  }
}
