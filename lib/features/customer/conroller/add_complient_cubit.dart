import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/customer/data/params/add_compleint_params.dart';
import 'package:aloudeh_company/features/customer/data/repository/customer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddComplaintBMCubit extends Cubit<PostState<BaseEntity>> {
  final CustomerBaseRepository  _customerBaseRepository;
  AddComplaintBMCubit(
      this._customerBaseRepository,
      ) : super(const PostState.idle());

  Future<void> emitAddEmployee({required AddCompleintParams addCompleintParams}) async {
    emit(const PostState.loading());
    final response = await _customerBaseRepository.addComplaint(addCompleintParams:addCompleintParams);
    response.fold((l) => emit(PostState.error(l)), (r) async {
      emit(PostState.success(r));

    });
  }}