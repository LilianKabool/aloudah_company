import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../data/params/delete_truck_bm_params.dart';

@injectable
class DeleteTruckCubit extends Cubit<PostState<BaseEntity>> {
 final BranchManagerBaseRepository _branchManagerBaseRepository;
  DeleteTruckCubit(
    this._branchManagerBaseRepository,
  ) : super(const PostState.idle());

  Future<void> emitDeleteTruck({required DeleteTrukBMParams deleteTruckParams}) async {
    emit(const PostState.loading());
    final response = await _branchManagerBaseRepository.deleteTruck(deleteTruckParams:deleteTruckParams);
    response.fold((l) => emit(PostState.error(l)), (r) async {
      emit(PostState.success(r));
    
    });
  }}
