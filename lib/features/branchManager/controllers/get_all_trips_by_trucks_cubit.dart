import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_trips_by_trucks_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_shipping_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_all_trips_by_trucks_params.dart';
import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetAllTripsByTrucksCubit extends Cubit<GetState<GetAllTripsByTrucksEntity>> {
  final BranchManagerBaseRepository _branchManagerBaseRepository;
  GetAllTripsByTrucksCubit(
      this._branchManagerBaseRepository,
      ) : super(const GetState.loading());

  Future<void> emitGetAllTripsByTrucks({required GetAllTripsByTrucksParams getAllTripsByTrucksParams}) async {
    emit(const GetState.loading());
    final response = await _branchManagerBaseRepository.getAllTripsByTrucks(  getAllTripsByTrucksParams: getAllTripsByTrucksParams);

    response.fold((l) => emit(GetState.error(l)), (r) async {
      emit(GetState.success(r));

    });
  }}
