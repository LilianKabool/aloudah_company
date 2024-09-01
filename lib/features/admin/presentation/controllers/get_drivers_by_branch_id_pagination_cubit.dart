import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/GetTrucksEntity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_drivers_By_Branch_id_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouses_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_driver_by_branch_id_params.dart';
import 'package:aloudeh_company/features/admin/data/params/get_trucks_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllDriversPaginatedCubit extends Cubit<PaginationStateTest<DataForDriver>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<DataForDriver> _drivers = [];
  bool canLoadMoreData = true;

  GetAllDriversPaginatedCubit(this._adminBaseRepository)
      : super(const PaginationStateTest.loading());

  Future<void> emitGetAllDrivers({required GetDriverByBranchIdParams getDriverByBranchIdParams  ,
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

    var response = await _adminBaseRepository.getDriversByBranch(getDriverByBranchIdParams: getDriverByBranchIdParams, page: currentPage);
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
          _addIncomingDataToClassMemberData(loadMore, r );
          emit(PaginationStateTest.success(
            data: _drivers.where((element) => element != null).cast<DataForDriver>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }
  void _addIncomingDataToClassMemberData(
      bool loadMore, BasePaginationEntity<PaginationEntity<DataForDriver?>> model) {
    if (loadMore) {
      _drivers.addAll(model.data!.data as Iterable<DataForDriver>);
    } else {
      _drivers = model.data!.data.cast<DataForDriver>();
    }
  }
}
