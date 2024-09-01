import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_manifest_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetManifestCubit extends Cubit<GetState<GetManifestEntity>> {
  final AdminBaseRepository _adminBaseRepository;
  GetManifestCubit(
      this._adminBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetManifest({required GetManifestParams getManifestParams}) async {
    emit(const GetState.loading());
    final response = await _adminBaseRepository.getManifest(getManifestParams:  getManifestParams);
    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
