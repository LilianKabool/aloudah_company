// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_information_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckInformationEntity _$TruckInformationEntityFromJson(
        Map<String, dynamic> json) =>
    TruckInformationEntity(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TruckInformationEntityToJson(
        TruckInformationEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      line: json['line'] as String,
      createdBy: json['created_by'] as String,
      addingData: DateTime.parse(json['adding_data'] as String),
      editingBy: json['editing_by'] as String?,
      editingDate: json['edittung_date'] as String?,
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num).toInt(),
      trips: (json['trips'] as List<dynamic>)
          .map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      drivers: (json['drivers'] as List<dynamic>)
          .map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'line': instance.line,
      'created_by': instance.createdBy,
      'adding_data': instance.addingData.toIso8601String(),
      'editing_by': instance.editingBy,
      'edittung_date': instance.editingDate,
      'notes': instance.notes,
      'branch_id': instance.branchId,
      'trips': instance.trips,
      'drivers': instance.drivers,
    };

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      number: json['number'] as String,
      date: DateTime.parse(json['date'] as String),
      driverId: (json['driver_id'] as num).toInt(),
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'driver_id': instance.driverId,
    };
