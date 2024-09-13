import 'package:aloudeh_company/core/api/api_consumer.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_received_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_received_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/params/add_compleint_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/global/base_entity.dart';

abstract class CustomerBaseWebServices {
  Future<BaseEntity> addComplaint(AddCompleintParams addCompleintParams);
  Future<GetArrivedShippingEntity> getArrivedShippingBm();
  Future<GetNotArrivedShippingEntity> getNotArrivedShippingBm();
  Future<GetReceivedShippingEntity> getReceivedShippingBm();
  Future<GetNotReceivedShippingEntity> getNotRceivedShippingBm();

}

@Singleton(as: CustomerBaseWebServices)
class CustomerWebServicesImpl implements CustomerBaseWebServices {
  final ApiConsumer _apiConsumer;

  CustomerWebServicesImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<BaseEntity> addComplaint(AddCompleintParams addCompleintParams) async {
    final response = await _apiConsumer.post(EndPoints.addCompliant,
        body: addCompleintParams.toJson());
    return BaseEntity.fromJson(response);
  }

  @override
  Future<GetArrivedShippingEntity> getArrivedShippingBm() async {
    final response = await _apiConsumer.get(EndPoints.getProfileBM);
    return GetArrivedShippingEntity.fromJson(response);
  }
  @override
  Future<GetNotArrivedShippingEntity> getNotArrivedShippingBm() async {
    final response = await _apiConsumer.get(EndPoints.getProfileBM);
    return GetNotArrivedShippingEntity.fromJson(response);
  }
  @override
  Future<GetReceivedShippingEntity> getReceivedShippingBm() async {
    final response = await _apiConsumer.get(EndPoints.getProfileBM);
    return GetReceivedShippingEntity.fromJson(response);
  }@override
  Future<GetNotReceivedShippingEntity> getNotRceivedShippingBm() async {
    final response = await _apiConsumer.get(EndPoints.getProfileBM);
    return GetNotReceivedShippingEntity.fromJson(response);
  }

}
