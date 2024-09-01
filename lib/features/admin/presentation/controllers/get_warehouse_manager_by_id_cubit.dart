import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouse_manager_entity.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/params/params/get_warehouse_manager_by_id_params.dart';

@injectable
class GetWarehouseManagerByIdCubit extends Cubit<GetState<WarehouseManagerEntity>> {
 final AdminBaseRepository _adminBaseRepository;
  GetWarehouseManagerByIdCubit(
    this._adminBaseRepository,
  ) : super(const GetState.loading());

  Future<void> emitGetWarehouseManagerById({required GetWareHouseManagerByIdParams getWareHouseManagerByIdParams}) async {
    emit(const GetState.loading());
    final response = await _adminBaseRepository.getWarehouseManagerById(getWareHouseManagerByIdParams:  getWareHouseManagerByIdParams);
    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));
    
    });
  }}
