import 'package:aloudeh_company/core/api/api_consumer.dart';
import 'package:aloudeh_company/core/api/end_points.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/data/params/promote_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_archive_trips_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_branches_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_colsed_trips_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_customers_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_drivers_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_employees_bManager_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_open_trips_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_record_entity_pagination.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_trips_by_trucks_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_information_branch_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_manifest_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_profile_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_shipping_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_trucks_by_branch_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/login_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/model/log_in_Bm_model.dart';

// import 'package:aloudeh_company/features/branchManager/data/entity/loginBM_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_driver_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_info_trips_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_shipping_params.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_received_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_received_shipping_entity.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import '../../../../core/global/base_pagination_entity.dart';
import '../../../../core/global/pagination_entity.dart';
import '../../data/entity/truck_record_entity.dart';
import '../params/add_employee_params.dart';
import '../params/add_shipping_cost_params.dart';
import '../params/add_truck_params.dart';
import '../params/add_vacation_employee_params.dart';
import '../params/add_vacation_warehouse_params.dart';
import '../params/delete_driver_params.dart';
import '../params/delete_employee_params.dart';
import '../params/delete_truck_bm_params.dart';
import '../params/get_all_trips_by_trucks_params.dart';
import '../params/loginBMParams.dart';
import '../params/rate_employee_params.dart';
import '../params/truck_record_params.dart';
import '../params/update_driver_params.dart';
import '../params/update_employee_params.dart';
import '../params/update_truck_params.dart';
import 'package:injectable/injectable.dart';

abstract class BranchManagerBaseWebServices {
  Future<BaseEntity> addEmployee(AddEmployeeParams addEmployeeParams);

  Future<BaseEntity> updateEmployee(UpdateEmployeeParams updateEmployeeParams);

  Future<BasePaginationEntity<PaginationEntity<BranchForBM>>> getAllBranches(
      int page);

  Future<BaseEntity> updateDriver(UpdateDriverParams updateDriverParams);

  Future<BaseEntity> deleteEmployee(DeleteEmployeeParams deleteEmployeeParams);

  Future<BaseEntity> addTruck(AddTruckParams addTruckParams);

  Future<BaseEntity> addDriver(AddDriverParams addDriverParams);

  Future<BaseEntity> updateTruck(UpdateTruckParams updateTruckParams);

  Future<BaseEntity> deleteTruck(DeleteTrukBMParams deleteTruckParams);

  Future<BaseEntity> deleteDriver(DeleteDriverParams deleteDriverParams);

  Future<LogInBmModel> logIn({required LogInBMParams logInBMParams});

  Future<GetAllEmployeesEntity> getAllEmployees();

  Future<GetAllTrucksByBranchEntity> getAllTrucksByBranch();

  Future<GetInfoBranchEntity> getInfoBranch();

  Future<GetProfileEntity> getProfile();


  Future<GetTripInfoEntity> getInfotrip(GetInfoTripsParams getInfoTripsParams);

  Future<GetShippingEntity> getShipping(GetShippingParams getShippingParams);
Future<GetAllTripsByTrucksEntity> getAllTripsByTrucks(GetAllTripsByTrucksParams getAllTripsByTrucksParams);

  Future<BasePaginationEntity<PaginationEntity<TruckRecordPaginatedEntity>>>
      getAllTruckRecordPaginated(int page);

  Future<BasePaginationEntity<PaginationEntity<DriverPaginatedEntity>>>
      getAllDrivers(int page);

  Future<BasePaginationEntity<PaginationEntity<ClosedTrip>>> getAllClosedTrips(
      int page);

  Future<BasePaginationEntity<PaginationEntity<Customer>>> getAllCustomer(
      int page);

  Future<BasePaginationEntity<PaginationEntity<OpenTrip>>> getAllOpenTrips(
      int page);

  Future<BasePaginationEntity<PaginationEntity<ArchiveTrip>>>
      getAllArchiveTrips(int page);

  Future<BaseEntity> promoteEmployee(
      PromoteEmployeeParams promoteEmployeeParams);

  Future<BaseEntity> rateEmployee(RateEmployeeParams rateEmployeeParams);

  Future<BaseBMTruckRecordEntity> truckRecord(
      TruckRecordParams truckRecordParams);

  Future<GetManifestBmEntity> getManifest(
      GetManifestBMParams getManifestParams);

  Future<BaseEntity> addVacationWarehouse(
      AddVacationWarehouseParams addVacationWarehouseParams);

  Future<BaseEntity> addVacationEmployee(
      AddVacationEmployeeParams addVacationEmployeeParams);

  Future<BaseEntity> addShippingCost(ShippingCostParams addShippingCostParams);

  Future<BaseEntity> editShippingCost(
      ShippingCostParams editShippingCostParams);
}

@Singleton(as: BranchManagerBaseWebServices)
class BranchManagerWebServicesImpl implements BranchManagerBaseWebServices {
  final ApiConsumer _apiConsumer;

  BranchManagerWebServicesImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<BaseEntity> addEmployee(AddEmployeeParams addEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.addBMEmployee,
        body: addEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<DriverPaginatedEntity>>>
      getAllDrivers(int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getAllDriversBM, queryParameters: {"page": page}),
        (json) => DriverPaginatedEntity.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<ClosedTrip>>> getAllClosedTrips(
      int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getAllClosedTripBM, queryParameters: {"page": page}),
        (json) => ClosedTrip.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<Customer>>> getAllCustomer(
      int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getAllCustomerBM, queryParameters: {"page": page}),
        (json) => Customer.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<OpenTrip>>> getAllOpenTrips(
      int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getAllOpenTripBM, queryParameters: {"page": page}),
        (json) => OpenTrip.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<ArchiveTrip>>>
      getAllArchiveTrips(int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getAllOpenTripBM, queryParameters: {"page": page}),
        (json) => ArchiveTrip.fromJson(json));
  }

  @override
  Future<LogInBmModel> logIn({required LogInBMParams logInBMParams}) async {
    final response = await _apiConsumer.post(EndPoints.adminLogIn,
        queryParameters: logInBMParams.toJson());
    return LogInBmModel.fromEntity(LogInBMEntity.fromJson(response));
  }

  @override
  Future<GetAllEmployeesEntity> getAllEmployees() async {
    final response = await _apiConsumer.get(EndPoints.getAllEmployeesBManager);
    return GetAllEmployeesEntity.fromJson(response);
  }

  @override
  Future<GetAllTrucksByBranchEntity> getAllTrucksByBranch() async {
    final response = await _apiConsumer.get(EndPoints.getAllTrucksByBranch);
    return GetAllTrucksByBranchEntity.fromJson(response);
  }

  @override
  Future<GetInfoBranchEntity> getInfoBranch() async {
    final response = await _apiConsumer.get(EndPoints.getInfoBranchBM);
    return GetInfoBranchEntity.fromJson(response);
  }

  @override
  Future<GetProfileEntity> getProfile() async {
    final response = await _apiConsumer.get(EndPoints.getProfileBM);
    return GetProfileEntity.fromJson(response);
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<BranchForBM>>> getAllBranches(
      int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer
            .get(EndPoints.getbranchesBM, queryParameters: {"page": page}),
        (json) => BranchForBM.fromJson(json));
  }

  @override
  Future<BaseEntity> updateEmployee(
      UpdateEmployeeParams updateEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.updateBMEmployee,
        body: updateEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> updateDriver(UpdateDriverParams updateDriverParams) async {
    final response = await _apiConsumer.post(EndPoints.updateBMDriver,
        body: updateDriverParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> deleteEmployee(
      DeleteEmployeeParams deleteEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.deleteBMEmployee,
        body: deleteEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addTruck(AddTruckParams addTruckParams) async {
    final response = await _apiConsumer.post(EndPoints.addBMTruck,
        body: addTruckParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addDriver(AddDriverParams addDriverParams) async {
    final response = await _apiConsumer.post(EndPoints.addDriver,
        body: addDriverParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> updateTruck(UpdateTruckParams updateTruckParams) async {
    final response = await _apiConsumer.post(EndPoints.updateBMTruck,
        body: updateTruckParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> deleteDriver(DeleteDriverParams deleteDriverParams) async {
    final response = await _apiConsumer.post(EndPoints.deleteBMDriver,
        body: deleteDriverParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<TruckRecordPaginatedEntity>>>
      getAllTruckRecordPaginated(int page) async {
    return await _getResultWithPagination(
        () => _apiConsumer.get(EndPoints.getTrucksPaginatedBMAnager,
            queryParameters: {"page": page}),
        (json) => TruckRecordPaginatedEntity.fromJson(json));
  }

  @override
  Future<BaseEntity> deleteTruck(DeleteTrukBMParams deleteTruckParams) async {
    final response = await _apiConsumer.post(EndPoints.deleteBMTruck,
        body: deleteTruckParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> promoteEmployee(
      PromoteEmployeeParams promoteEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.promoteBMEmployee,
        body: promoteEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> rateEmployee(RateEmployeeParams rateEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.rateBMEmployee,
        body: rateEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseBMTruckRecordEntity> truckRecord(
      TruckRecordParams truckRecordParams) async {
    final response = await _apiConsumer
        .get("${EndPoints.truckBMRecord}/${truckRecordParams.desk}");
    return BaseBMTruckRecordEntity.fromJson(response);
  }

  @override
  Future<GetManifestBmEntity> getManifest(
      GetManifestBMParams getManifestParams) async {
    final response = await _apiConsumer
        .get("${EndPoints.getManifest}/${getManifestParams.manifestNumber}");
    return GetManifestBmEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addVacationEmployee(
      AddVacationEmployeeParams addVacationEmployeeParams) async {
    final response = await _apiConsumer.post(EndPoints.addVacationBMEmployee,
        body: addVacationEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addVacationWarehouse(
      AddVacationWarehouseParams addVacationWarehouseParams) async {
    final response = await _apiConsumer.post(EndPoints.addVacationBMWarehouse,
        body: addVacationWarehouseParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addShippingCost(
      ShippingCostParams addShippingCostParams) async {
    final response = await _apiConsumer.post(EndPoints.addShippingBMCost,
        body: addShippingCostParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> editShippingCost(
      ShippingCostParams editShippingCostParams) async {
    final response = await _apiConsumer.post(EndPoints.editShippingBMCost,
        body: editShippingCostParams.toJson());
    return BaseEntity.fromJson(response);
  }

  Future<BasePaginationEntity<PaginationEntity<T>>> _getResultWithPagination<T>(
      Future<dynamic> Function() api, T Function(dynamic json) fromJson) async {
    var response = await api();

    return BasePaginationEntity.fromJson(
      response,
      (paginated) => PaginationEntity.fromJson(
        paginated,
        (data) => fromJson(data),
      ),
    );
  }

  @override
  Future<GetTripInfoEntity> getInfotrip(
      GetInfoTripsParams getInfoTripsParams) async {
    final response = await _apiConsumer
        .get("${EndPoints.getTripInfo}/${getInfoTripsParams.tripNumber}");
    return GetTripInfoEntity.fromJson(response);
  }

  @override
  Future<GetShippingEntity> getShipping(
      GetShippingParams getShippingParams) async {
    final response = await _apiConsumer
        .get("${EndPoints.getShipping}/${getShippingParams.id}");
    return GetShippingEntity.fromJson(response);
  }

  @override
  Future<GetAllTripsByTrucksEntity> getAllTripsByTrucks(
      GetAllTripsByTrucksParams getAllTripsByTrucksParams) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getAllTripsByTrucks}/${getAllTripsByTrucksParams.truck_id}");
    return GetAllTripsByTrucksEntity.fromJson(response);
  }
}
