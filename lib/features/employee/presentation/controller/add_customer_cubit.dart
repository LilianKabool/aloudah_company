import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/employee/data/params/add_customer_params.dart';
import 'package:aloudeh_company/features/employee/data/repository/employee_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddCustomerCubit extends Cubit<PostState<BaseEntity>> {
 final EmployeeBaseRepository _employeeBaseRepository;
  AddCustomerCubit(
    this._employeeBaseRepository,
  ) : super(const PostState.idle());

  Future<void> emitAddCustomer({required AddCustomerParams addCustomerParams}) async {
    emit(const PostState.loading());
    final response = await _employeeBaseRepository.addCustomer(addCustomerParams:addCustomerParams);
    response.fold((l) => emit(PostState.error(l)), (r) async {
      emit(PostState.success(r));
    
    });
  }}
