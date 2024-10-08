import 'package:aloudeh_company/core/api/api_consumer.dart';
import 'package:aloudeh_company/core/api/end_points.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global/base_pagination_entity.dart';
import 'package:aloudeh_company/core/global/pagination_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/GetTrucksEntity.dart';
import 'package:aloudeh_company/features/admin/data/entity/archive_trips_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/employee_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/employee_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_active_trips_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_branches_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_all_trips_admin_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_customer_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_customers_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_drivers_By_Branch_id_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_employee_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_employees_By_Branch_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_manifest_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_prices_list_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_trip_information_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/log_in_admin_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/register_admin_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/truck_information_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/truck_record_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/vacation_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouse_manager_entity.dart';
import 'package:aloudeh_company/features/admin/data/entity/warehouses_paginated_entity.dart';
import 'package:aloudeh_company/features/admin/data/model/log_in_admin_model.dart';
import 'package:aloudeh_company/features/admin/data/model/register_admin_model.dart';
import 'package:aloudeh_company/features/admin/data/params/add_branch_manager_params.dart';
import 'package:aloudeh_company/features/admin/data/params/add_branch_params.dart';
import 'package:aloudeh_company/features/admin/data/params/add_warehouse_manager_params.dart';
import 'package:aloudeh_company/features/admin/data/params/add_warehouse_params.dart';
import 'package:aloudeh_company/features/admin/data/params/get_driver_by_branch_id_params.dart';
import 'package:aloudeh_company/features/admin/data/params/get_trucks_params.dart';
import 'package:aloudeh_company/features/admin/data/params/log_in_admin_params.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/data/params/get_prices_List_params.dart';
import 'package:aloudeh_company/features/admin/data/params/params/truck_record_params.dart';
import 'package:aloudeh_company/features/admin/data/params/promote_employee_params.dart';
import 'package:aloudeh_company/features/admin/data/params/register_admin_params.dart';
import 'package:injectable/injectable.dart';

import '../params/params/delete_branch_params.dart';
import '../params/params/delete_warehouse_params.dart';
import '../params/params/get_branches_employee_by_id_params.dart';
import '../params/params/get_customer_by_id_params.dart';
import '../params/params/get_employee_by_id_params.dart';
import '../params/params/get_trip_information_params.dart';
import '../params/params/get_vacation_employee_params.dart';
import '../params/params/get_warehouse_manager_by_id_params.dart';
import '../params/params/truck_information_params.dart';
import '../params/params/update_branch_params.dart';
import '../params/params/update_warehouse_params.dart';

abstract class AdminBaseWebService {
  Future<RegisterAdminModel> register(
      {required RegisterAdminParams registerAdminParams});

  Future<LogInAdminModel> logIn({required LogInAdminParams logInAdminParams});

  Future<BaseEntity> addBranch({required AddBranchParams addBranchParams});

  Future<BaseEntity> addBranchManager(
      {required AddBranchManagerParams addBranchManagerParams});

  Future<GetManifestEntity> getManifest(GetManifestParams getManifestParams);

  Future<BaseEntity> addWarehouse(
      {required AddWarehouseParams addWarehouseParams});

  Future<BaseEntity> addWarehouseManager(
      {required AddWarehouseManagerParams addWarehouseManagerParams});

  Future<BaseEntity> updateBranch(
      {required UpdateBranchParams updateBranchParams});

  Future<BaseEntity> updateWarehouse(
      {required UpdateWarehouseParams updateWarehouseParams});

  Future<BaseEntity> deleteBranch(
      {required DeleteBranchParams deleteBranchParams});

  Future<BaseEntity> deleteWarehouse(
      {required DeleteWarehouseParams deleteWarehouseParams});

  Future<BasePaginationEntity<PaginationEntity<GetAllBranchesPaginatedEntity>>>
      getAllBranches(int page);

  Future<BasePaginationEntity<PaginationEntity<GetAllTrucks>>> getAllTrucks(
      {required GetTruckParams getTruckParams, required int page});

  Future<BasePaginationEntity<PaginationEntity<dataforGetAllEmployee>>>
      getEmployeesByBranch(
          {required GetEmployeeByIdParams getEmployeeByIdParams,
          required int page});



  Future<BasePaginationEntity<PaginationEntity<DataForDriver>>>
      getDriversByBranch(
          {required GetDriverByBranchIdParams getDriverByBranchIdParams,
          required int page});

  Future<BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity>>>
      getAllWarehouse(int page);

  Future<BaseTruckRecordEntity> truckRecord(
      {required TruckRecordParams truckRecordParams});

  Future<BaseEmployeeAdminEntity> getEmployeeById(
      {required GetEmployeeByIdParams getEmployeeByIdParams});

  Future<BaseEmployeeEntity> getBranchEmployees(
      {required GetBranchEmployeeByIdParams getBranchesEmployeeByIdParams});

  Future<WarehouseManagerEntity> getWarehouseManagerById(
      {required GetWareHouseManagerByIdParams getWareHouseManagerByIdParams});

  Future<BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity>>>
      getWarehousesPaginated(int page);

  Future<BaseEntity> promoteEmployee(
      {required PromoteEmployeeParams promoteEmployeeParams});

  Future<TruckInformationEntity> getTruckInformation(
      {required TruckInformationParams truckInformationParams});

  Future<BaseAdminVacationEntity> getEmployeeVacations(
      {required GetVacationParams getVacationEmployeeParams});

  Future<BaseAdminVacationEntity> getWarehouseVacations(
      {required GetVacationParams getVacationWarehouseParams});

  Future<
      BasePaginationEntity<
          PaginationEntity<GetAllTripsAdminPaginatedEntity>>> getAllTrips(
      int page);

  Future<BasePaginationEntity<PaginationEntity<EmployeePaginatedAdminEntity>>>
      getAllEmployees(int page);

  Future<BasePaginationEntity<PaginationEntity<dataForArctiveTrips>>>
      getAllActiveTrips(int page);
  Future<
      BasePaginationEntity<
          PaginationEntity<dataItemPriceList>>>
  typePriceList(int page);

  Future<BasePaginationEntity<PaginationEntity<archiveTrip>>>
      getAllArchiveTrips(int page);

  Future<GetTripInformationAdminEntity> getTripInformation(
      {required GetTripInformationParams getTripInformationParams});

  Future<GetCustomerAdminEntity> getCustomerById(
      {required GetCustomerByIdParams getCustomerByIdParams});

  Future<
      BasePaginationEntity<
          PaginationEntity<customerEntity>>> getAllCustomers(
      int page);
}

@Singleton(as: AdminBaseWebService)
class AdminWebService implements AdminBaseWebService {
  final ApiConsumer _apiConsumer;

  AdminWebService({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<RegisterAdminModel> register(
      {required RegisterAdminParams registerAdminParams}) async {
    final response = await _apiConsumer.post(EndPoints.adminRegister,
        queryParameters: registerAdminParams.toJson());
    return RegisterAdminModel.fromEntity(
        RegisterAdminEntity.fromJson(response));
  }

  @override
  Future<LogInAdminModel> logIn(
      {required LogInAdminParams logInAdminParams}) async {
    final response = await _apiConsumer.post(EndPoints.adminLogIn,
        queryParameters: logInAdminParams.toJson());
    return LogInAdminModel.fromEntity(LogInAdminEntity.fromJson(response));
  }

  @override
  Future<BaseEntity> addBranch(
      {required AddBranchParams addBranchParams}) async {
    final response = await _apiConsumer.post(EndPoints.addbranch,
        body: addBranchParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addWarehouse(
      {required AddWarehouseParams addWarehouseParams}) async {
    final response = await _apiConsumer.post(EndPoints.addWarehouse,
        body: addWarehouseParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<GetManifestEntity> getManifest(
      GetManifestParams getManifestParams) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getManifestAdmin}/${getManifestParams.manifestNumber}");
    return GetManifestEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addWarehouseManager(
      {required AddWarehouseManagerParams addWarehouseManagerParams}) async {
    final response = await _apiConsumer.post(EndPoints.addWarehouseManager,
        body: addWarehouseManagerParams.toJson());
    return BaseEntity.fromJson(response);
  }
  @override
  Future<BaseEntity> updateBranch(
      {required UpdateBranchParams updateBranchParams}) async {
    final response = await _apiConsumer.post(EndPoints.updateBranch,
        body: updateBranchParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> updateWarehouse(
      {required UpdateWarehouseParams updateWarehouseParams}) async {
    final response = await _apiConsumer.post(EndPoints.updateWarehouse,
        body: updateWarehouseParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> deleteBranch(
      {required DeleteBranchParams deleteBranchParams}) async {
    final response = await _apiConsumer.post(EndPoints.deleteBranch,
        body: deleteBranchParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> deleteWarehouse(
      {required DeleteWarehouseParams deleteWarehouseParams}) async {
    final response = await _apiConsumer.post(EndPoints.deleteWarehouse,
        body: deleteWarehouseParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<GetAllBranchesPaginatedEntity>>>
  getAllBranches(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getAllBranchesAdmin,
                queryParameters: {"page": page}),
            (json) => GetAllBranchesPaginatedEntity.fromJson(json));
  }

  Future<BasePaginationEntity<PaginationEntity<T>>> _getResultWithPagination<T>(
      Future<dynamic> Function() api, T Function(dynamic json) fromJson) async {
    var response = await api();

    return BasePaginationEntity.fromJson(
      response,
          (paginated) =>
          PaginationEntity.fromJson(
            paginated,
                (data) => fromJson(data),
          ),
    );
  }

  @override
  Future<BaseTruckRecordEntity> truckRecord(
      {required TruckRecordParams truckRecordParams}) async {
    final response = await _apiConsumer
        .get("${EndPoints.truckRecord}/${truckRecordParams.desk}");
    return BaseTruckRecordEntity.fromJson(response);
  }

  @override
  Future<BaseEmployeeAdminEntity> getEmployeeById(
      {required GetEmployeeByIdParams getEmployeeByIdParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getEmployeeById}/${getEmployeeByIdParams.employeeId}");
    return BaseEmployeeAdminEntity.fromJson(response);
  }

  @override
  Future<BaseEmployeeEntity> getBranchEmployees(
      {required GetBranchEmployeeByIdParams
      getBranchesEmployeeByIdParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getBranchEmployeeById}/${getBranchesEmployeeByIdParams
            .branchId}");
    return BaseEmployeeEntity.fromJson(response);
  }

  @override
  Future<WarehouseManagerEntity> getWarehouseManagerById(
      {required GetWareHouseManagerByIdParams
      getWareHouseManagerByIdParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getWarehouseManagerById}/${getWareHouseManagerByIdParams
            .warehouseManagerId}");
    return WarehouseManagerEntity.fromJson(response);
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity>>>
  getWarehousesPaginated(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getAllBranchesAdmin,
                queryParameters: {"page": page}),
            (json) => WarehousesPaginatedEntity.fromJson(json));
  }

  @override
  Future<BaseEntity> promoteEmployee(
      {required PromoteEmployeeParams promoteEmployeeParams}) async {
    final response = await _apiConsumer.post(EndPoints.promoteEmployee,
        body: promoteEmployeeParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<BaseEntity> addBranchManager(
      {required AddBranchManagerParams addBranchManagerParams}) async {
    final response = await _apiConsumer.post(EndPoints.addBranchManager,
        body: addBranchManagerParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<TruckInformationEntity> getTruckInformation(
      {required TruckInformationParams truckInformationParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.truckInformationAdmin}/${truckInformationParams
            .truckNumber}");
    return TruckInformationEntity.fromJson(response);
  }

  @override
  Future<BaseAdminVacationEntity> getEmployeeVacations(
      {required GetVacationParams getVacationEmployeeParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getEmployeeVacation}/${getVacationEmployeeParams.id}");
    return BaseAdminVacationEntity.fromJson(response);
  }

  @override
  Future<BaseAdminVacationEntity> getWarehouseVacations(
      {required GetVacationParams getVacationWarehouseParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getWmanagerVacation}/${getVacationWarehouseParams.id}");
    return BaseAdminVacationEntity.fromJson(response);
  }

  @override
  Future<
      BasePaginationEntity<
          PaginationEntity<GetAllTripsAdminPaginatedEntity>>> getAllTrips(
      int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(
              EndPoints.getAllTripsAdmin,
              queryParameters: {"page": page},
            ),
            (json) => GetAllTripsAdminPaginatedEntity.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<EmployeePaginatedAdminEntity>>>
  getAllEmployees(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getAllEmployeesAdmin,
                queryParameters: {"page": page}),
            (json) => EmployeePaginatedAdminEntity.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<dataForArctiveTrips>>>
  getAllActiveTrips(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getAllActiveTripsAdmin,
                queryParameters: {"page": page}),
            (json) => dataForArctiveTrips.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<archiveTrip>>>
  getAllArchiveTrips(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getAllArchiveTripsAdmin,
                queryParameters: {"page": page}),
            (json) => archiveTrip.fromJson(json));
  }

  @override
  Future<GetTripInformationAdminEntity> getTripInformation(
      {required GetTripInformationParams getTripInformationParams}) async {
    final response = await _apiConsumer.get(
        "${EndPoints.getTripInformationAdmin}/${getTripInformationParams
            .tripNumber}");
    return GetTripInformationAdminEntity.fromJson(response);
  }

  @override
  Future<GetCustomerAdminEntity> getCustomerById(
      {required GetCustomerByIdParams getCustomerByIdParams}) async {
    final response = await _apiConsumer.post(EndPoints.getCustomerByIdAdmin,
        body: getCustomerByIdParams.toJson());
    return GetCustomerAdminEntity.fromJson(response);
  }

  @override
  Future<
      BasePaginationEntity<
          PaginationEntity<customerEntity>>> getAllCustomers(
      int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getCustomersPaginatedAdmin,
                queryParameters: {"page": page}),
            (json) => customerEntity.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<WarehousesPaginatedEntity>>>
  getAllWarehouse(int page) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get(EndPoints.getWarehousesPaginated,
                queryParameters: {"page": page}),
            (json) => WarehousesPaginatedEntity.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<GetAllTrucks>>> getAllTrucks(
      {required GetTruckParams getTruckParams, required int page}) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get("${EndPoints.getTrucks}", queryParameters: {
              "page": page,
              "branch_id": getTruckParams.branchId
            }),
            (json) => GetAllTrucks.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<dataforGetAllEmployee>>>
  getEmployeesByBranch({required GetEmployeeByIdParams getEmployeeByIdParams,
    required int page}) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get("${EndPoints.employeesByBranch}",
                queryParameters: {
                  "page": page,
                  "branch_id": getEmployeeByIdParams.employeeId
                }),
            (json) => dataforGetAllEmployee.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<DataForDriver>>>
  getDriversByBranch(
      {required GetDriverByBranchIdParams getDriverByBranchIdParams,
        required int page}) async {
    return await _getResultWithPagination(
            () =>
            _apiConsumer.get("${EndPoints.driversByBranch}",
                queryParameters: {
                  "page": page,
                  "branch_id": getDriverByBranchIdParams.branchId
                }),
            (json) => DataForDriver.fromJson(json));
  }

  @override
  Future<BasePaginationEntity<PaginationEntity<dataItemPriceList>>> typePriceList(int page) async{
    return await _getResultWithPagination(
            () => _apiConsumer.get(EndPoints.getPricesList,
            queryParameters: {"page": page}),
            (json) => dataItemPriceList.fromJson(json));
  }
}
