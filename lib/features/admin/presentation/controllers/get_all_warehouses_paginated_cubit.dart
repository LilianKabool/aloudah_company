import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouses_paginated_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllWarehousePaginatedCubit extends Cubit<PaginationStateTest<WarehousesPaginatedEntity>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<WarehousesPaginatedEntity> _warehouses = [];
  bool canLoadMoreData = true;

  GetAllWarehousePaginatedCubit(this._adminBaseRepository)
      : super(const PaginationStateTest.loading());

  Future<void> emitGetAllwarehouses({
    bool loadMore = false,
  }) async {
    if (!canLoadMoreData) {
      return;
    }

    if (loadMore) {
      if (lastPage != null && currentPage >= lastPage!) return;
      currentPage++;
    } else {
      currentPage = 1;
      emit(const PaginationStateTest.loading());
    }

    var response = await _adminBaseRepository.getAllWarehouse(currentPage);
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
          _addIncomingDataToClassMemberData(loadMore, r as BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity?>> );
          emit(PaginationStateTest.success(
            data: _warehouses.where((element) => element != null).cast<WarehousesPaginatedEntity>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }
  void _addIncomingDataToClassMemberData(
      bool loadMore, BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity?>> model) {
    if (loadMore) {
      _warehouses.addAll(model.data!.data as Iterable<WarehousesPaginatedEntity>);
    } else {
      _warehouses = model.data!.data.cast<WarehousesPaginatedEntity>();
    }
  }
}
