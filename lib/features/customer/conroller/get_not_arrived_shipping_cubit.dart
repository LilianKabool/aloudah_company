import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_shipping_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/repository/customer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../data/entity/get_not_arrived_shipping_entity.dart';


@injectable
class GetNotArrivedShippingCubit extends Cubit<GetState<GetNotArrivedShippingEntity>> {
  final CustomerBaseRepository _customerBaseRepository;
  GetNotArrivedShippingCubit(
      this._customerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetShipping() async {
    emit(const GetState.loading());
    final response = await _customerBaseRepository.getNotArrivedShippingBm( );

    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
