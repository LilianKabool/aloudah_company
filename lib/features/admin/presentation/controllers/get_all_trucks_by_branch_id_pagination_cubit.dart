import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/GetTrucksEntity.dart';
import 'package:aloudeh_company/features/admin/data/params/get_trucks_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';

import '../../../employee/presentation/screens/pagination_state_test.dart';

@injectable
class GetAllTrucksPaginatedCubit
    extends Cubit<PaginationStateTest<GetAllTrucks>> {
  final AdminBaseRepository _adminBaseRepository;
  int currentPage = 1;
  int? lastPage;
  List<GetAllTrucks?> _trucks = [];
  bool canLoadMoreData = true;

  GetAllTrucksPaginatedCubit(this._adminBaseRepository)
      : super(const PaginationStateTest.loading());

  Future<void> emitGetAlltrucks({
    required GetTruckParams getTruckParams,
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

    var response = await _adminBaseRepository.getAllTrucks(
        getTruckParams: getTruckParams, page: currentPage);
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
            data: _trucks
                .where((element) => element != null)
                .cast<GetAllTrucks>()
                .toList(),
            canLoadMore: currentPage,
          ));
        }
      },
    );
  }

  void _addIncomingDataToClassMemberData(bool loadMore,
      BasePaginationEntity<PaginationEntity<GetAllTrucks?>> model) {
    if (loadMore) {
      _trucks.addAll(model!.data!.data);
    } else {
      _trucks = model.data!.data;
    }
  }
}
