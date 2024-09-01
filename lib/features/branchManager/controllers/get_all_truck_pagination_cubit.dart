

import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_record_entity_pagination.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/global/pagination_entity.dart';
import '../../employee/presentation/screens/pagination_state_test.dart';

const initialPage = 1;

@injectable
class GetAllTruckRecordPaginatedCubit extends Cubit<PaginationStateTest<TruckRecordPaginatedEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  int currentPage = initialPage;
  int? lastPage;
  List<TruckRecordPaginatedEntity?> _truckRecords = [];

  GetAllTruckRecordPaginatedCubit(
      this._branchManagerBaseRepository,
      ) : super(const PaginationStateTest.loading());

  Future<void> emitGetAllTruckRecords({
    bool loadMore = false,
  }) async {
    if (loadMore) {
      if (lastPage != null && currentPage > lastPage!) return;
      currentPage++;
    } else {
      currentPage = initialPage;
      emit(const PaginationStateTest.loading());
    }

    var response = await _branchManagerBaseRepository.getAllTruckRecordPaginated(currentPage);
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
            data: _truckRecords.where((element) => element != null).cast<TruckRecordPaginatedEntity>().toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }

  void _addIncomingDataToClassMemberData(bool loadMore, BasePaginationEntity<PaginationEntity<TruckRecordPaginatedEntity?>> model) {
    if (loadMore) {
      _truckRecords.addAll(model.data!.data);
    } else {
      _truckRecords = model.data!.data;
    }
  }
}
