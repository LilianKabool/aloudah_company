import 'package:json_annotation/json_annotation.dart';

part 'get_all_active_trips_paginated_entity.g.dart';

@JsonSerializable()
class ActiveTripsPaginatedAdminEntity {
  @JsonKey(name:"success")
  final  success;
  @JsonKey(name:"message")
  final  message;
  @JsonKey(name:"data")
  final Data data;

  ActiveTripsPaginatedAdminEntity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ActiveTripsPaginatedAdminEntity.fromJson(Map<String, dynamic> json) => _$ActiveTripsPaginatedAdminEntityFromJson(json);

Map<String, dynamic> toJson() => _$ActiveTripsPaginatedAdminEntityToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name:"current_page")
  final  currentPage;
  @JsonKey(name:"data")
  final List<dataForArctiveTrips> data;
  @JsonKey(name:"first_page_url")
  final  firstPageUrl;
  @JsonKey(name:"from")
  final  from;
  @JsonKey(name:"last_page")
  final  lastPage;
  @JsonKey(name:"last_page_url")
  final  lastPageUrl;
  @JsonKey(name:"links")
  final List<Link> links;
  @JsonKey(name:"next_page_url")
  final dynamic nextPageUrl;
  @JsonKey(name:"path")
  final  path;
  @JsonKey(name:"per_page")
  final  perPage;
  @JsonKey(name:"prev_page_url")
  final dynamic prevPageUrl;
  @JsonKey(name:"to")
  final  to;
  @JsonKey(name:"total")
  final  total;

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

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class dataForArctiveTrips {
  @JsonKey(name:"id")
  final  id;
  @JsonKey(name:"truck_id")
  final  truckId;
  @JsonKey(name:"driver_id")
  final  driverId;
  @JsonKey(name:"branch_id")
  final  branchId;
  @JsonKey(name:"manifest_id")
  final  manifestId;
  @JsonKey(name:"number")
  final  number;
  @JsonKey(name:"date")
  final  date;
  @JsonKey(name:"status")
  final  status;
  @JsonKey(name:"arrival_date")
  final dynamic arrivalDate;
  @JsonKey(name:"created_by")
  final  createdBy;
  @JsonKey(name:"edited_by")
  final dynamic editedBy;
  @JsonKey(name:"archived")
  final  archived;
  @JsonKey(name:"destination_id")
  final  destinationId;
  @JsonKey(name:"destination_name")
  final  destinationName;
  @JsonKey(name:"driver")

  final Driver driver;
  @JsonKey(name:"branch")
  final Branch branch;
  @JsonKey(name:"truck")
  final Truck truck;


  dataForArctiveTrips({
    required this.id,
    required this.truckId,
    required this.driverId,
    required this.branchId,
    required this.manifestId,
    required this.destinationName,
    required this.number,
    required this.date,
    required this.status,
    required this.arrivalDate,
    required this.createdBy,
    required this.editedBy,
    required this.archived,
    required this.destinationId,
    required this.driver,
    required this.branch,
    required this.truck,
  });

  factory dataForArctiveTrips.fromJson(Map<String, dynamic> json) => _$dataForArctiveTripsFromJson(json);

  Map<String, dynamic> toJson() => _$dataForArctiveTripsToJson(this);
}

@JsonSerializable()
class Branch {
  @JsonKey(name:"id")
  final  id;
  @JsonKey(name:"address")
  final  address;
  @JsonKey(name:"desk")
  final  desk;


  Branch({
    required this.id,
    required this.address,
    required this.desk,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}

@JsonSerializable()
class Driver {
  @JsonKey(name:"id")
  final  id;
  @JsonKey(name:"name")
  final  name;

  Driver({
    required this.id,
    required this.name,
  });

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}

@JsonSerializable()
class Truck {
  @JsonKey(name:"id")
  final  id;
  @JsonKey(name:"number")
  final  number;


  Truck({
    required this.id,
    required this.number,
  });

  factory Truck.fromJson(Map<String, dynamic> json) => _$TruckFromJson(json);

  Map<String, dynamic> toJson() => _$TruckToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name:"url")
  final  url;
  @JsonKey(name:"label")
  final  label;
  @JsonKey(name:"active")
  final  active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
