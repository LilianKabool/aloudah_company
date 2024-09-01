// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_drivers_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverPaginatedEntity _$DriverPaginatedEntityFromJson(
        Map<String, dynamic> json) =>
    DriverPaginatedEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      employmentDate: json['employment_date'] as String,
    );

Map<String, dynamic> _$DriverPaginatedEntityToJson(
        DriverPaginatedEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'employment_date': instance.employmentDate,
    };
