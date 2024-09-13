// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCustomerProfileEntity _$GetCustomerProfileEntityFromJson(
        Map<String, dynamic> json) =>
    GetCustomerProfileEntity(
      success: json['success'] as bool,
      data: Customer.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$GetCustomerProfileEntityToJson(
        GetCustomerProfileEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      name: json['name'] as String,
      mobile: (json['mobile'] as num).toInt(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'address': instance.address,
    };
