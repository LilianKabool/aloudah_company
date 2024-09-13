import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_info_trips_params.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:aloudeh_company/features/employee/data/entity/get_all_receipts_entity.dart';
import 'package:aloudeh_company/features/employee/data/params/get_all_receipt_params.dart';
import 'package:aloudeh_company/features/employee/data/repository/employee_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../data/entity/get_profile_entity.dart';

@injectable
class GetProfileBMCubit extends Cubit<GetState<GetProfileEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetProfileBMCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetProfile() async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getProfile();

    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
