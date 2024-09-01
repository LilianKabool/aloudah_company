
import 'package:aloudeh_company/features/branchManager/data/entity/login_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/loginBMParams.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/network_exceptions.dart';
import '../../../core/global_states/post_state.dart';
import '../../../core/utils/shared_preference_utils.dart';
import '../../admin/data/entity/log_in_admin_entity.dart';
import '../data/repository/branch_manager_repository.dart';

part 'log_in_cubit.freezed.dart';
part 'log_in_state.dart';
@injectable
class LogInBMCubit extends Cubit<PostState<LogInBMEntity>>{
 final BranchManagerBaseRepository _branchManagerBaseRepository;
  final SharedPreferencesUtils _sharedPreferencesUtils;
 LogInBMCubit(
     this._branchManagerBaseRepository,
     this._sharedPreferencesUtils
     ) : super(const PostState.idle());

 Future<void> emitLogInBM({required LogInBMParams logInbmParams}) async {
   emit(const PostState.loading());
   final response = await _branchManagerBaseRepository.logIn(logInBMParams:logInbmParams );
   response.fold((l) => emit(PostState.error(l)), (r) async {
     _sharedPreferencesUtils.init();
     await _sharedPreferencesUtils.setToken(r.token);
     emit(PostState.success(r));
     if (kDebugMode) {
       print("Token Here : ${_sharedPreferencesUtils.getToken()}");
     }

   });
 }}

