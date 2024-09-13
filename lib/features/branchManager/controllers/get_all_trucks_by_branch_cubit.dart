import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_trucks_by_branch_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllTrucksByBranchCubit extends Cubit<GetState<GetAllTrucksByBranchEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetAllTrucksByBranchCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetAllTrucksByBranch() async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getAllTrucksByBranch();

    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
