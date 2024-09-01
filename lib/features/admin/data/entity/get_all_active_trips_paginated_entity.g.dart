// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_active_trips_paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveTripsPaginatedAdminEntity _$ActiveTripsPaginatedAdminEntityFromJson(
        Map<String, dynamic> json) =>
    ActiveTripsPaginatedAdminEntity(
      success: json['success'],
      message: json['message'],
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveTripsPaginatedAdminEntityToJson(
        ActiveTripsPaginatedAdminEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      currentPage: json['current_page'],
      data: (json['data'] as List<dynamic>)
          .map((e) => dataForArctiveTrips.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'],
      to: json['to'],
      total: json['total'],
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
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

dataForArctiveTrips _$dataForArctiveTripsFromJson(Map<String, dynamic> json) =>
    dataForArctiveTrips(
      id: json['id'],
      truckId: json['truck_id'],
      driverId: json['driver_id'],
      branchId: json['branch_id'],
      manifestId: json['manifest_id'],
      destinationName: json['destination_name'],
      number: json['number'],
      date: json['date'],
      status: json['status'],
      arrivalDate: json['arrival_date'],
      createdBy: json['created_by'],
      editedBy: json['edited_by'],
      archived: json['archived'],
      destinationId: json['destination_id'],
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
      truck: Truck.fromJson(json['truck'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$dataForArctiveTripsToJson(
        dataForArctiveTrips instance) =>
    <String, dynamic>{
      'id': instance.id,
      'truck_id': instance.truckId,
      'driver_id': instance.driverId,
      'branch_id': instance.branchId,
      'manifest_id': instance.manifestId,
      'number': instance.number,
      'date': instance.date,
      'status': instance.status,
      'arrival_date': instance.arrivalDate,
      'created_by': instance.createdBy,
      'edited_by': instance.editedBy,
      'archived': instance.archived,
      'destination_id': instance.destinationId,
      'destination_name': instance.destinationName,
      'driver': instance.driver,
      'branch': instance.branch,
      'truck': instance.truck,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: json['id'],
      address: json['address'],
      desk: json['desk'],
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'desk': instance.desk,
    };

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      id: json['id'],
      name: json['name'],
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Truck _$TruckFromJson(Map<String, dynamic> json) => Truck(
      id: json['id'],
      number: json['number'],
    );

Map<String, dynamic> _$TruckToJson(Truck instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'],
      label: json['label'],
      active: json['active'],
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
