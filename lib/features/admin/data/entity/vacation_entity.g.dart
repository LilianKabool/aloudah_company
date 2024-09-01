// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseAdminVacationEntity _$BaseAdminVacationEntityFromJson(
        Map<String, dynamic> json) =>
    BaseAdminVacationEntity(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => dataForVacation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BaseAdminVacationEntityToJson(
        BaseAdminVacationEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

dataForVacation _$dataForVacationFromJson(Map<String, dynamic> json) =>
    dataForVacation(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      userType: json['user_type'] as String,
      createdBy: json['created_by'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      reason: json['datreasona'] as String,
    );

Map<String, dynamic> _$dataForVacationToJson(dataForVacation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'created_by': instance.createdBy,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'datreasona': instance.reason,
    };
