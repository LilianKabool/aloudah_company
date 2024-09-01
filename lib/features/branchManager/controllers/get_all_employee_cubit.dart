

import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/global_states/get_state.dart';
import '../data/entity/get_all_employees_bManager_entity.dart';

@injectable
class GetAllEmployeesBmanagerCubit extends Cubit<GetState<GetAllEmployeesEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetAllEmployeesBmanagerCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetAllEmployees() async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getAllEmployees();
    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}