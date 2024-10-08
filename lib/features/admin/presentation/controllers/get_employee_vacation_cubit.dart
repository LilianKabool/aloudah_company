import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/vacation_entity.dart';
import 'package:aloudeh_company/features/admin/data/repository/admin_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/params/params/get_vacation_employee_params.dart';

@injectable
class GetEmployeeVacationCubit extends Cubit<GetState<BaseAdminVacationEntity>> {
 final AdminBaseRepository _adminBaseRepository;
  GetEmployeeVacationCubit(
    this._adminBaseRepository,
  ) : super(const GetState.loading());

  Future<void> emitGetEmployeeVacation({required GetVacationParams getVacationParams}) async {
    emit(const GetState.loading());
    final response = await _adminBaseRepository.getEmployeeVacation(getVacationEmployeeParams:  getVacationParams);
    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));
    
    });
  }}

