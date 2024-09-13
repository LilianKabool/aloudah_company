// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trucks_by_branch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTrucksByBranchEntity _$GetAllTrucksByBranchEntityFromJson(
        Map<String, dynamic> json) =>
    GetAllTrucksByBranchEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Truck.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllTrucksByBranchEntityToJson(
        GetAllTrucksByBranchEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Truck _$TruckFromJson(Map<String, dynamic> json) => Truck(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      line: json['line'] as String,
      createdBy: json['created_by'] as String,
      addingData: DateTime.parse(json['adding_data'] as String),
      editingBy: DateTime.parse(json['editing_by'] as String),
      editingDate: DateTime.parse(json['editing_date'] as String),
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num).toInt(),
    );

Map<String, dynamic> _$TruckToJson(Truck instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'line': instance.line,
      'created_by': instance.createdBy,
      'adding_data': instance.addingData.toIso8601String(),
      'editing_by': instance.editingBy.toIso8601String(),
      'editing_date': instance.editingDate.toIso8601String(),
      'notes': instance.notes,
      'branch_id': instance.branchId,
    };
