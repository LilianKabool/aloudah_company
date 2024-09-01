import 'package:json_annotation/json_annotation.dart';

part 'archive_trips_paginated_entity.g.dart';

@JsonSerializable()



class ArchiveTripsPaginatedAdminEntity {
  @JsonKey(name: 'success')

  final bool success;
  @JsonKey(name: 'message')

  final String message;
  @JsonKey(name: 'data')

  final Data data;

  ArchiveTripsPaginatedAdminEntity({
    required this.success,
    required this.message,
    required this.data,
  });
  factory ArchiveTripsPaginatedAdminEntity.fromJson(
      Map<String, dynamic> json) =>
      _$ArchiveTripsPaginatedAdminEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ArchiveTripsPaginatedAdminEntityToJson(this);
}
@JsonSerializable()


class Data {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'data')
  final List<archiveTrip> data;
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @JsonKey(name: 'from')
  final int from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @JsonKey(name: 'links')
  final List<Link> links;
  @JsonKey(name: 'next_page_url')
  final dynamic nextPageUrl;
  @JsonKey(name: 'path')
  final String path;
  @JsonKey(name: 'pre_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  @JsonKey(name: 'to')
  final int to;
  @JsonKey(name: 'total')
  final int total;

  Data({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory Data.fromJson(
      Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataToJson(this);
}
@JsonSerializable()


class archiveTrip {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'truck_id')
  final int truckId;
  @JsonKey(name: 'driver_id')
  final int driverId;
  @JsonKey(name: 'branch_id')
  final int branchId;
  @JsonKey(name: 'manifest_id')
  final int manifestId;
  @JsonKey(name: 'destination_id')
  final int destinationId;
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'date')
  final DateTime date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'arrival_date')
  final dynamic arrivalDate;
  @JsonKey(name: 'created_by')
  final String createdBy;
  @JsonKey(name: 'edited_by')
  final dynamic editedBy;
  @JsonKey(name: 'archived')
  final int archived;
  @JsonKey(name: 'closed_at')
  final DateTime closedAt;
  @JsonKey(name: 'driver')
  final dynamic driver;
  @JsonKey(name: 'branch')
  final Branch branch;
  @JsonKey(name: 'truck')
  final Truck truck;

  archiveTrip({
    required this.id,
    required this.truckId,
    required this.driverId,
    required this.branchId,
    required this.manifestId,
    required this.destinationId,
    required this.number,
    required this.date,
    required this.status,
    required this.arrivalDate,
    required this.createdBy,
    required this.editedBy,
    required this.archived,
    required this.closedAt,
    required this.driver,
    required this.branch,
    required this.truck,
  });

  factory archiveTrip.fromJson(
      Map<String, dynamic> json) =>
      _$archiveTripFromJson(json);

  Map<String, dynamic> toJson() =>
      _$archiveTripToJson(this);
}
@JsonSerializable()


class Branch {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'address')
  final String address;

  Branch({
    required this.id,
    required this.address,
  });

  factory Branch.fromJson(
      Map<String, dynamic> json) =>
      _$BranchFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BranchToJson(this);
}
@JsonSerializable()



class Truck {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'number')
  final int number;

  Truck({
    required this.id,
    required this.number,
  });
  factory Truck.fromJson(
      Map<String, dynamic> json) =>
      _$TruckFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TruckToJson(this);
}
@JsonSerializable()


class Link {
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'active')
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(
      Map<String, dynamic> json) =>
      _$LinkFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LinkToJson(this);
}