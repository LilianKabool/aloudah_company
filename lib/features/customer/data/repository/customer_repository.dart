import 'package:aloudeh_company/features/branchManager/data/web_services/branch_manager_web_services.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_received_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_received_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/params/add_compleint_params.dart';
import 'package:aloudeh_company/features/customer/data/web_services/customer_web_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global/base_entity.dart';
import '../../../../core/network/network_info.dart';

abstract class CustomerBaseRepository {
  Future<Either<NetworkExceptions, BaseEntity>> addComplaint(
      {required AddCompleintParams addCompleintParams});

  Future<Either<NetworkExceptions, GetArrivedShippingEntity>>
      getArrivedShippingBm();

  Future<Either<NetworkExceptions, GetNotArrivedShippingEntity>>
      getNotArrivedShippingBm();

  Future<Either<NetworkExceptions, GetReceivedShippingEntity>>
      getReceivedShippingBm();

  Future<Either<NetworkExceptions, GetNotReceivedShippingEntity>>
      getNotReceivedShippingBm();
}

@Singleton(as: CustomerBaseRepository)
class CustomerRepositoryImpl implements CustomerBaseRepository {
  final NetworkInfo _networkInfo;
  final CustomerBaseWebServices _customerBaseWebServices;

  CustomerRepositoryImpl(
      {required NetworkInfo networkInfo,
      required CustomerBaseWebServices customerBaseWebServices})
      : _networkInfo = networkInfo,
        _customerBaseWebServices = customerBaseWebServices;

  @override
  Future<Either<NetworkExceptions, GetArrivedShippingEntity>> getArrivedShippingBm() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _customerBaseWebServices.getArrivedShippingBm();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, GetNotArrivedShippingEntity>> getNotArrivedShippingBm() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _customerBaseWebServices.getNotArrivedShippingBm();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
  @override
  Future<Either<NetworkExceptions, GetReceivedShippingEntity>> getReceivedShippingBm() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _customerBaseWebServices.getReceivedShippingBm();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
  @override
  Future<Either<NetworkExceptions, GetNotReceivedShippingEntity>> getNotReceivedShippingBm() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _customerBaseWebServices.getNotRceivedShippingBm();
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }

  @override
  Future<Either<NetworkExceptions, BaseEntity>> addComplaint(
      {required AddCompleintParams addCompleintParams}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _customerBaseWebServices.addComplaint(addCompleintParams);
        return Right(response);
      } on Exception catch (ex) {
        return Left(NetworkExceptions.getDioException(ex));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
