// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_employees_bManager_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllEmployeesEntity _$GetAllEmployeesEntityFromJson(
        Map<String, dynamic> json) =>
    GetAllEmployeesEntity(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => dataOfEmployee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllEmployeesEntityToJson(
        GetAllEmployeesEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

dataOfEmployee _$dataOfEmployeeFromJson(Map<String, dynamic> json) =>
    dataOfEmployee(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$dataOfEmployeeToJson(dataOfEmployee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
