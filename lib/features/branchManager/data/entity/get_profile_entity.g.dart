// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileEntity _$GetProfileEntityFromJson(Map<String, dynamic> json) =>
    GetProfileEntity(
      success: json['success'] as bool,
      data: dataOfProfile.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$GetProfileEntityToJson(GetProfileEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

dataOfProfile _$dataOfProfileFromJson(Map<String, dynamic> json) =>
    dataOfProfile(
      name: json['name'] as String,
      rank: json['rank'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phone_number'] as num).toInt(),
      managerAddress: json['manager_address'] as String,
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
    );

Map<String, dynamic> _$dataOfProfileToJson(dataOfProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rank': instance.rank,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'manager_address': instance.managerAddress,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
    };
