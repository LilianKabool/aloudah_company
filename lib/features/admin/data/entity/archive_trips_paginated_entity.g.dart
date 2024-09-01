// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_trips_paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArchiveTripsPaginatedAdminEntity _$ArchiveTripsPaginatedAdminEntityFromJson(
        Map<String, dynamic> json) =>
    ArchiveTripsPaginatedAdminEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArchiveTripsPaginatedAdminEntityToJson(
        ArchiveTripsPaginatedAdminEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => archiveTrip.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String,
      perPage: (json['pre_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'pre_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

archiveTrip _$archiveTripFromJson(Map<String, dynamic> json) => archiveTrip(
      id: (json['id'] as num).toInt(),
      truckId: (json['truck_id'] as num).toInt(),
      driverId: (json['driver_id'] as num).toInt(),
      branchId: (json['branch_id'] as num).toInt(),
      manifestId: (json['manifest_id'] as num).toInt(),
      destinationId: (json['destination_id'] as num).toInt(),
      number: json['number'] as String,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
      arrivalDate: json['arrival_date'],
      createdBy: json['created_by'] as String,
      editedBy: json['edited_by'],
      archived: (json['archived'] as num).toInt(),
      closedAt: DateTime.parse(json['closed_at'] as String),
      driver: json['driver'],
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
      truck: Truck.fromJson(json['truck'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$archiveTripToJson(archiveTrip instance) =>
    <String, dynamic>{
      'id': instance.id,
      'truck_id': instance.truckId,
      'driver_id': instance.driverId,
      'branch_id': instance.branchId,
      'manifest_id': instance.manifestId,
      'destination_id': instance.destinationId,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'arrival_date': instance.arrivalDate,
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'archived': instance.archived,
      'closed_at': instance.closedAt.toIso8601String(),
      'driver': instance.driver,
      'branch': instance.branch,
      'truck': instance.truck,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
    };

Truck _$TruckFromJson(Map<String, dynamic> json) => Truck(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$TruckToJson(Truck instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
