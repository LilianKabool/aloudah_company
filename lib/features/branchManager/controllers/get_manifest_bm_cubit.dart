import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_manifest_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetManifestBMCubit extends Cubit<GetState<GetManifestBmEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetManifestBMCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetManifest({required GetManifestBMParams getManifestBMParams}) async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getManifest(getManifestParams:  getManifestBMParams);

    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
