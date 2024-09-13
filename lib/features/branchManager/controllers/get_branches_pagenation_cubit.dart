import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_branches_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

import '../../admin/data/entity/get_all_branches_paginated_entity.dart';
import '../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllBranchesBMPaginatedCubit extends Cubit<PaginationStateTest<BranchForBM>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<BranchForBM?> _branches = [];
  bool canLoadMoreData = true;

  GetAllBranchesBMPaginatedCubit(this._branchManagerBaseRepository)
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

    var response = await _branchManagerBaseRepository.getAllBranches(currentPage);
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
            data: _branches.where((element) => element != null).cast<BranchForBM>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }
  void _addIncomingDataToClassMemberData(
      bool loadMore, BasePaginationEntity<PaginationEntity<BranchForBM?>> model) {
    if (loadMore) {
      _branches.addAll(model.data!.data);
    } else {
      _branches = model.data!.data;
    }
  }
}
