import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/GetTrucksEntity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_employees_By_Branch_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouses_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_trucks_params.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_employee_by_id_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllEmployeesPaginatedCubit extends Cubit<PaginationStateTest<dataforGetAllEmployee>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<dataforGetAllEmployee> _employees = [];
  bool canLoadMoreData = true;

  GetAllEmployeesPaginatedCubit(this._adminBaseRepository)
      : super(const PaginationStateTest.loading());

  Future<void> emitGetAllEmployee({required GetEmployeeByIdParams getEmployeeByIdParams  ,
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

    var response = await _adminBaseRepository.getEmployeesByBranch(getEmployeeByIdParams: getEmployeeByIdParams, page: currentPage);
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
            data: _employees.where((element) => element != null).cast<dataforGetAllEmployee>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }
  void _addIncomingDataToClassMemberData(
      bool loadMore, BasePaginationEntity<PaginationEntity<dataforGetAllEmployee?>> model) {
    if (loadMore) {
      _employees.addAll(model.data!.data as Iterable<dataforGetAllEmployee>);
    } else {
      _employees = model.data!.data.cast<dataforGetAllEmployee>();
    }
  }
}
