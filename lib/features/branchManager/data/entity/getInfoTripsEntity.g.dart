// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getInfoTripsEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTripInfoEntity _$GetTripInfoEntityFromJson(Map<String, dynamic> json) =>
    GetTripInfoEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetTripInfoEntityToJson(GetTripInfoEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num).toInt(),
      truckId: (json['truck_id'] as num).toInt(),
      truckName: json['truck_name'] as String,
      driverId: (json['driver_id'] as num).toInt(),
      driverName: json['driver_name'] as String,
      branchId: (json['branch_id'] as num).toInt(),
      branchName: json['branch_name'] as String,
      manifestId: (json['manifest_id'] as num).toInt(),
      number: json['number'] as String,
      date:
          json['data'] == null ? null : DateTime.parse(json['data'] as String),
      status: json['status'] as String,
      arrivalDate: json['arrival_data'] == null
          ? null
          : DateTime.parse(json['arrival_data'] as String),
      createdBy: json['created_by'] as String?,
      editedBy: json['edited_by'] as String?,
      archived: (json['archived'] as num).toInt(),
      destinationId: (json['destination_id'] as num).toInt(),
      destinationName: json['destination_name'] as String,
      manifest: Manifest.fromJson(json['manifest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'truck_id': instance.truckId,
      'truck_name': instance.truckName,
      'driver_id': instance.driverId,
      'driver_name': instance.driverName,
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'manifest_id': instance.manifestId,
      'number': instance.number,
      'data': instance.date?.toIso8601String(),
      'status': instance.status,
      'arrival_data': instance.arrivalDate?.toIso8601String(),
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'archived': instance.archived,
      'destination_id': instance.destinationId,
      'destination_name': instance.destinationName,
      'manifest': instance.manifest,
    };

Manifest _$ManifestFromJson(Map<String, dynamic> json) => Manifest(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String,
      status: json['status'] as String,
      generalTotal: json['general_total'] as String,
      discount: (json['discount'] as num).toInt(),
      netTotal: json['net_total'] as String,
      miscPaid: json['misc_paid'] as String,
      againstShipping: json['against_shipping'] as String,
      adapter: json['adapter'] as String,
      advance: json['advance'] as String,
      collection: json['collection'] as String,
      tripId: json['trip_id'] as String?,
    );

Map<String, dynamic> _$ManifestToJson(Manifest instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'status': instance.status,
      'general_total': instance.generalTotal,
      'discount': instance.discount,
      'net_total': instance.netTotal,
      'misc_paid': instance.miscPaid,
      'against_shipping': instance.againstShipping,
      'adapter': instance.adapter,
      'advance': instance.advance,
      'collection': instance.collection,
      'trip_id': instance.tripId,
    };
