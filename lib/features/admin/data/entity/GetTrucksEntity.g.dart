// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetTrucksEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTrucksentity _$GetAllTrucksentityFromJson(Map<String, dynamic> json) =>
    GetAllTrucksentity(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllTrucks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllTrucksentityToJson(GetAllTrucksentity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

GetAllTrucks _$GetAllTrucksFromJson(Map<String, dynamic> json) => GetAllTrucks(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      line: json['line'] as String,
      createdBy: json['created_by'] as String,
      addingData: json['adding_data'] as String,
      editingBy: json['editing_by'] as String?,
      editingDate: json['editing_date'] as String?,
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num).toInt(),
    );

Map<String, dynamic> _$GetAllTrucksToJson(GetAllTrucks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'line': instance.line,
      'created_by': instance.createdBy,
      'adding_data': instance.addingData,
      'editing_by': instance.editingBy,
      'editing_date': instance.editingDate,
      'notes': instance.notes,
      'branch_id': instance.branchId,
    };
