import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import '../data/params/add_truck_params.dart';
import '../data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddTruckCubit extends Cubit<PostState<BaseEntity>> {
 final BranchManagerBaseRepository _branchManagerBaseRepository;
  AddTruckCubit(
    this._branchManagerBaseRepository,
  ) : super(const PostState.idle());

  Future<void> emitAddTruck({required AddTruckParams addTruckParams}) async {
    emit(const PostState.loading());
    final response = await _branchManagerBaseRepository.addTruck(addTruckParams:addTruckParams);
    response.fold((l) => emit(PostState.error(l)), (r) async {
      emit(PostState.success(r));
    
    });
  }
}
