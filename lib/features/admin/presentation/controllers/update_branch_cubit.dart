import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/params/params/update_branch_params.dart';

@injectable
class UpdateBranchCubit extends Cubit<PostState<BaseEntity>> {
 final AdminBaseRepository _adminBaseRepository;
  UpdateBranchCubit(
    this._adminBaseRepository,
  ) : super(const PostState.idle());

  Future<void> emitUpdateBranch({required UpdateBranchParams updateBranchParams}) async {
    emit(const PostState.loading());
    final response = await _adminBaseRepository.updateBranch(updateBranchParams:updateBranchParams);
    response.fold((l) => emit(PostState.error(l)), (r) async {
      emit(PostState.success(r));
    
    });
  }}
