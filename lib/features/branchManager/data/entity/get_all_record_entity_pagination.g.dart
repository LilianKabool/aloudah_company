// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_record_entity_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckRecordPaginatedEntity _$TruckRecordPaginatedEntityFromJson(
        Map<String, dynamic> json) =>
    TruckRecordPaginatedEntity(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      line: json['line'] as String,
      createdBy: json['created_by'] as String,
      addingDate: json['adding_data'] as String,
      editingBy: json['editing_by'] as String?,
      editingDate: json['editing_date'] as String?,
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num).toInt(),
    );

Map<String, dynamic> _$TruckRecordPaginatedEntityToJson(
        TruckRecordPaginatedEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'line': instance.line,
      'created_by': instance.createdBy,
      'adding_data': instance.addingDate,
      'editing_by': instance.editingBy,
      'editing_date': instance.editingDate,
      'notes': instance.notes,
      'branch_id': instance.branchId,
    };
