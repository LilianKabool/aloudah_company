import 'package:json_annotation/json_annotation.dart';

part 'getInfoTripsEntity.g.dart';

@JsonSerializable()
class GetTripInfoEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final Data data;

  GetTripInfoEntity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetTripInfoEntity.fromJson(Map<String, dynamic> json) => _$GetTripInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetTripInfoEntityToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'truck_id')
  final int truckId;
  @JsonKey(name: 'truck_name')
  final String truckName;
  @JsonKey(name: 'driver_id')
  final int driverId;
  @JsonKey(name: 'driver_name')
  final String driverName;
  @JsonKey(name: 'branch_id')
  final int branchId;
  @JsonKey(name: 'branch_name')
  final String branchName;
  @JsonKey(name: 'manifest_id')
  final int manifestId;
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'data')
  final DateTime ? date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'arrival_data')
  final DateTime  ? arrivalDate;
  @JsonKey(name: 'created_by')
  final String ? createdBy;
  @JsonKey(name: 'edited_by')
  final String  ? editedBy;
  @JsonKey(name: 'archived')
  final int archived;
  @JsonKey(name: 'destination_id')
  final int destinationId;
  @JsonKey(name: 'destination_name')
  final String destinationName;
  @JsonKey(name: 'manifest')
  final Manifest manifest;

  Data({
    required this.id,
    required this.truckId,
    required this.truckName,
    required this.driverId,
    required this.driverName,
    required this.branchId,
    required this.branchName,
    required this.manifestId,
    required this.number,
    required this.date,
    required this.status,
    required this.arrivalDate,
    required this.createdBy,
    required this.editedBy,
    required this.archived,
    required this.destinationId,
    required this.destinationName,
    required this.manifest,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class Manifest {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'general_total')
  final String generalTotal;
  @JsonKey(name: 'discount')
  final int discount;
  @JsonKey(name: 'net_total')
  final String netTotal;
  @JsonKey(name: 'misc_paid')
  final String miscPaid;
  @JsonKey(name: 'against_shipping')
  final String againstShipping;
  @JsonKey(name: 'adapter')
  final String adapter;
  @JsonKey(name: 'advance')
  final String advance;
  @JsonKey(name: 'collection')
  final String collection;
  @JsonKey(name: 'trip_id')
  final String ? tripId;


  Manifest({
    required this.id,
    required this.number,
    required this.status,
    required this.generalTotal,
    required this.discount,
    required this.netTotal,
    required this.miscPaid,
    required this.againstShipping,
    required this.adapter,
    required this.advance,
    required this.collection,
    required this.tripId,
  });

  factory Manifest.fromJson(Map<String, dynamic> json) => _$ManifestFromJson(json);

  Map<String, dynamic> toJson() => _$ManifestToJson(this);
}
