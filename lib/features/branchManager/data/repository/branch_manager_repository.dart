import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/network/network_info.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/data/params/promote_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_branches_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_all_colsed_trips_entity.dart';
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
import 'package:aloudeh_company/features/branchManager/data/entity/truck_record_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_driver_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_shipping_cost_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_truck_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_vacation_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_vacation_warehouse_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/delete_driver_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/delete_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_all_trips_by_trucks_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_info_trips_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_shipping_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/loginBMParams.dart';
import 'package:aloudeh_company/features/branchManager/data/params/rate_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/truck_record_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/update_driver_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/update_employee_params.dart';
import 'package:aloudeh_company/features/branchManager/data/params/update_truck_params.dart';
import 'package:aloudeh_company/features/branchManager/data/web_services/branch_manager_web_services.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/global/base_pagination_entity.dart';
import '../../../../core/global/pagination_entity.dart';
import '../entity/getAllTrucks.dart';
import '../entity/get_all_archive_trips_entity.dart';
import '../entity/log_out_entity.dart';
import '../params/delete_truck_bm_params.dart';

abstract class BranchManagerBaseRepository {
  Future<Either<NetworkExceptions, GetTripInfoEntity>> getInfotrip(
      {required GetInfoTripsParams getInfoTripsParams});

  Future<Either<NetworkExceptions, GetAllTrucksByBranchEntity>> getAllTrucksByBranch();

  Future<Either<NetworkExceptions, GetShippingEntity>> getShipping(
      {required GetShippingParams getShippingParams});
  Future<Either<NetworkExceptions, GetAllTripsByTrucksEntity>> getAllTripsByTrucks(
      {required GetAllTripsByTrucksParams getAllTripsByTrucksParams});

  Future<Either<NetworkExceptions, BaseEntity>> addEmployee(
      {required AddEmployeeParams addEmployeeParams});

  Future<Either<NetworkExceptions, LogInBMEntity>> logIn(
      {required LogInBMParams logInBMParams});

  Future<Either<NetworkExceptions, BaseEntity>> updateEmployee(
      {required UpdateEmployeeParams updateEmployeeParams});

  Future<Either<NetworkExceptions, BaseEntity>> updateDriver(
      {required UpdateDriverParams updateDriverParams});

  Future<
          Either<
              NetworkExceptions,
              BasePaginationEntity<
                  PaginationEntity<TruckRecordPaginatedEntity>>>>
      getAllTruckRecordPaginated(int page);

  Future<Either<NetworkExceptions, BaseEntity>> deleteEmployee(
      {required DeleteEmployeeParams deleteEmployeeParams});

  Future<Either<NetworkExceptions, BaseEntity>> deleteTruck(
      {required DeleteTrukBMParams deleteTruckParams});


  Future<Either<NetworkExceptions, BaseEntity>> addTruck(
      {required AddTruckParams addTruckParams});

  Future<Either<NetworkExceptions, BaseEntity>> addDriver(
      {required AddDriverParams addDriverParams});

  Future<Either<NetworkExceptions, BaseEntity>> updateTruck(
      {required UpdateTruckParams updateTruckParams});



  Future<Either<NetworkExceptions, BaseEntity>> deleteDriver(
      {required DeleteDriverParams deleteDriverParams});

  Future<Either<NetworkExceptions, BaseEntity>> promoteEmployee(
      {required PromoteEmployeeParams promoteEmployeeParams});

  Future<Either<NetworkExceptions, BaseEntity>> rateEmployee(
      {required RateEmployeeParams rateEmployeeParams});

  Future<Either<NetworkExceptions, BaseBMTruckRecordEntity>> truckRecord(
      {required TruckRecordParams truckRecordParams});

  Future<Either<NetworkExceptions, GetManifestBmEntity>> getManifest(
      {required GetManifestBMParams getManifestParams});

  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<BranchForBM>>>> getAllBranches(
      int page);

  Future<Either<NetworkExceptions, BaseEntity>> addVacationEmployee(
      {required AddVacationEmployeeParams addVacationEmployeeParams});

  Future<Either<NetworkExceptions, GetAllEmployeesEntity>> getAllEmployees();

  Future<Either<NetworkExceptions, GetInfoBranchEntity>> getInfoBranch();

  Future<Either<NetworkExceptions, GetProfileEntity>> getProfile();

  Future<Either<NetworkExceptions, BaseEntity>> addVacationWarehouse(
      {required AddVacationWarehouseParams addVacationWarehouseParams});

  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<ClosedTrip>>>>
      getAllClosedTrips(int page);

  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<Customer>>>> getAllCustomer(
      int page);

  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<OpenTrip>>>> getAllOpenTrips(
      int page);

  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<ArchiveTrip>>>>
      getAllArchiveTrips(int page);

  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<DriverPaginatedEntity>>>>
      getAllDrivers(int page);

  Future<Either<NetworkExceptions, BaseEntity>> addShippingCost(
      {required ShippingCostParams addShippingCostParams});

  Future<Either<NetworkExceptions, BaseEntity>> editShippingCost(
      {required ShippingCostParams editShippingCostParams});
}

@Singleton(as: BranchManagerBaseRepository)
class BranchManagerRepositoryImpl implements BranchManagerBaseRepository {
  final NetworkInfo _networkInfo;
  final BranchManagerBaseWebServices _branchManagerBaseWebServices;

  BranchManagerRepositoryImpl(
      {required NetworkInfo networkInfo,
      required BranchManagerBaseWebServices branchManagerBaseWebServices})
      : _networkInfo = networkInfo,
        _branchManagerBaseWebServices = branchManagerBaseWebServices;

  @override
  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<DriverPaginatedEntity>>>>
      getAllDrivers(int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllDrivers(page),
    );
  }

  @override
  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<BranchForBM>>>> getAllBranches(
      int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllBranches(page),
    );
  }

  @override
  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<ClosedTrip>>>>
      getAllClosedTrips(int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllClosedTrips(page),
    );
  }

  @override
  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<Customer>>>> getAllCustomer(
      int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllCustomer(page),
    );
  }

  @override
  Future<
      Either<NetworkExceptions,
          BasePaginationEntity<PaginationEntity<OpenTrip>>>> getAllOpenTrips(
      int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllOpenTrips(page),
    );
  }

  @override
  Future<
          Either<NetworkExceptions,
              BasePaginationEntity<PaginationEntity<ArchiveTrip>>>>
      getAllArchiveTrips(int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllArchiveTrips(page),
    );
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addEmployee(
      {required AddEmployeeParams addEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.addEmployee(addEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, LogInBMEntity>> logIn(
      {required LogInBMParams logInBMParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices.logIn(
            logInBMParams: logInBMParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetProfileEntity>> getProfile() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices.getProfile();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetAllEmployeesEntity>>
      getAllEmployees() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices.getAllEmployees();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
  @override
  Future<Either<NetworkExceptions, GetAllTrucksByBranchEntity>>
      getAllTrucksByBranch() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices.getAllTrucksByBranch();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetInfoBranchEntity>> getInfoBranch() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices.getInfoBranch();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> updateEmployee(
      {required UpdateEmployeeParams updateEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .updateEmployee(updateEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> updateDriver(
      {required UpdateDriverParams updateDriverParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .updateDriver(updateDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> deleteEmployee(
      {required DeleteEmployeeParams deleteEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .deleteEmployee(deleteEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }


  @override
  Future<Either<NetworkExceptions, BaseEntity>> addTruck(
      {required AddTruckParams addTruckParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.addTruck(addTruckParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addDriver(
      {required AddDriverParams addDriverParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.addDriver(addDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> updateTruck(
      {required UpdateTruckParams updateTruckParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.updateTruck(updateTruckParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> deleteDriver(
      {required DeleteDriverParams deleteDriverParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .deleteDriver(deleteDriverParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<
          Either<
              NetworkExceptions,
              BasePaginationEntity<
                  PaginationEntity<TruckRecordPaginatedEntity>>>>
      getAllTruckRecordPaginated(int page) async {
    return await _getResultWithPagination(
      () => _branchManagerBaseWebServices.getAllTruckRecordPaginated(page),
    );
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> deleteTruck(
      {required DeleteTrukBMParams deleteTruckParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.deleteTruck(deleteTruckParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> promoteEmployee(
      {required PromoteEmployeeParams promoteEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .promoteEmployee(promoteEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> rateEmployee(
      {required RateEmployeeParams rateEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .rateEmployee(rateEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseBMTruckRecordEntity>> truckRecord(
      {required TruckRecordParams truckRecordParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.truckRecord(truckRecordParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetManifestBmEntity>> getManifest(
      {required GetManifestBMParams getManifestParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.getManifest(getManifestParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addVacationEmployee(
      {required AddVacationEmployeeParams addVacationEmployeeParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .addVacationEmployee(addVacationEmployeeParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addVacationWarehouse(
      {required AddVacationWarehouseParams addVacationWarehouseParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .addVacationWarehouse(addVacationWarehouseParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addShippingCost(
      {required ShippingCostParams addShippingCostParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .addShippingCost(addShippingCostParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> editShippingCost(
      {required ShippingCostParams editShippingCostParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _branchManagerBaseWebServices
            .editShippingCost(editShippingCostParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  Future<Either<NetworkExceptions, BasePaginationEntity<PaginationEntity<T>>>>
      _getResultWithPagination<T>(
          Future<BasePaginationEntity<PaginationEntity<T>>> Function()
              getPagination) async {
    try {
      if (await _networkInfo.isConnected) {
        var response = await getPagination();
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } catch (error) {
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<NetworkExceptions, GetTripInfoEntity>> getInfotrip(
      {required GetInfoTripsParams getInfoTripsParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.getInfotrip(getInfoTripsParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetShippingEntity>> getShipping(
      {required GetShippingParams getShippingParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.getShipping(getShippingParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
  @override
  Future<Either<NetworkExceptions, GetAllTripsByTrucksEntity>> getAllTripsByTrucks(
      {required GetAllTripsByTrucksParams getAllTripsByTrucksParams }) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _branchManagerBaseWebServices.getAllTripsByTrucks(getAllTripsByTrucksParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }


}
