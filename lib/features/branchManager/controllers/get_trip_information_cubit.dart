//
//
// import 'package:aloudeh_company/core/global_states/get_state.dart';
// import 'package:aloudeh_company/features/branchManager/data/repository/branch_manager_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';
//
// @injectable
// class GetTripInformationCubit extends Cubit<GetState<GetTripInformationBMEntity>> {
//   final BranchManagerBaseRepository _branchManagerBaseRepository;
//   GetTripInformationCubit(
//       this._branchManagerBaseRepository,
//       ) : super(const GetState.loading());
//
//   Future<void> emitGetTripInformation({required GetTripInformationParams getTripInformationParams}) async {
//     emit(const GetState.loading());
//     final response = await _branchManagerBaseRepository.getTripInformation(getTripInformationParams:  getTripInformationParams);
//     response.fold((l) => emit(GetState.error(l)), (r) async {
//       emit(GetState.success(r));
//
//     });
//   }}
