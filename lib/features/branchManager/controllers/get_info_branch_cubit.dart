

import 'package:aloudeh_company/features/branchManager/data/entity/get_information_branch_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/global_states/get_state.dart';
import '../data/entity/get_all_employees_bManager_entity.dart';

@injectable
class GetInfoForBranchBMCubit extends Cubit<GetState<GetInfoBranchEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetInfoForBranchBMCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetInfoBranchBM() async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getInfoBranch();
    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}