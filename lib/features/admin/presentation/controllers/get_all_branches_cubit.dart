import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllBranchesPaginatedCubit extends Cubit<PaginationStateTest<GetAllBranchesPaginatedEntity>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<GetAllBranchesPaginatedEntity?> _branches = [];
  bool canLoadMoreData = true;

  GetAllBranchesPaginatedCubit(this._adminBaseRepository)
      : super(const PaginationStateTest.loading());

  Future<void> emitGetAllBranches({
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

    var response = await _adminBaseRepository.getAllBranches(currentPage);
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
          emit(PaginationStateTest.success(
            data: _branches.where((element) => element != null).cast<GetAllBranchesPaginatedEntity>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }
  void _addIncomingDataToClassMemberData(
      bool loadMore, BasePaginationEntity<PaginationEntity<GetAllBranchesPaginatedEntity?>> model) {
    if (loadMore) {
      _branches.addAll(model.data!.data);
    } else {
      _branches = model.data!.data;
    }
  }
}
