


import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';

import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';

import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';

import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';
import 'package:aloudeh_company/features/employee/presentation/screens/pagination_state_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTypePriceListPaginatedCubit extends Cubit<PaginationStateTest<dataItemPriceList>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<dataItemPriceList?> _types = [];

  GetTypePriceListPaginatedCubit(
      this._adminBaseRepository,
      ) : super(const PaginationStateTest.loading());

  Future<void> emitGetTypesPriceList({
    bool loadMore = false,
  }) async {
    if (loadMore) {
      if (lastPage != null && currentPage > lastPage!) return;
      currentPage++;
    } else {
      currentPage = 1;
      emit(const PaginationStateTest.loading());
    }

    var response = await _adminBaseRepository.typePriceList(currentPage);
    response.fold(
          (l) {
        if (kDebugMode) {
          print(l);
        }
        emit(PaginationStateTest.error(l));
      },
          (r) {
        if (r.data != null) {
          lastPage = r.data!.lastPage;
          _addIncomingDataToClassMemberData(loadMore, r);
          emit(PaginationStateTest.success(data: _types.where((element) => element != null).cast<dataItemPriceList>().toList(), canLoadMore: currentPage));
        }
      },
    );
  }

  void _addIncomingDataToClassMemberData(bool loadMore, BasePaginationEntity<PaginationEntity<dataItemPriceList?>> model) {
    if (loadMore) {
      _types.addAll(model.data!.data);
    } else {
      _types = model.data!.data;
    }
  }
}
