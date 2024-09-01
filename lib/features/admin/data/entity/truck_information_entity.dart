import 'package:json_annotation/json_annotation.dart';

part 'truck_information_entity.g.dart';

@JsonSerializable()
class TruckInformationEntity {

  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  final Data data;

  TruckInformationEntity({

    required this.message,
    required this.data,
  });
  factory TruckInformationEntity.fromJson(Map<String, dynamic> json) =>
      _$TruckInformationEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TruckInformationEntityToJson(this);
}
@JsonSerializable()

class Data {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "number")
  final int number;
  @JsonKey(name: "line")
  final String line;
  @JsonKey(name: "created_by")
  final String createdBy;
  @JsonKey(name: "adding_data")
  final DateTime addingData;
  @JsonKey(name: "editing_by")
  final String ? editingBy;
  @JsonKey(name: "edittung_date")
  final String ? editingDate;
  @JsonKey(name: "notes")
  final String ? notes;
  @JsonKey(name: "branch_id")
  final int branchId;
  @JsonKey(name: "trips")
  final List<Trip> trips;
  @JsonKey(name: "drivers")
  final List<Driver> drivers;

  Data({
    required this.id,
    required this.number,
    required this.line,
    required this.createdBy,
    required this.addingData,
    required this.editingBy,
    required this.editingDate,
    required this.notes,
    required this.branchId,
    required this.trips,
    required this.drivers,
  });
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()

class Driver {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;

  Driver({
    required this.id,
    required this.name,
  });
  factory Driver.fromJson(Map<String, dynamic> json) =>
      _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}

@JsonSerializable()

class Trip {
  @JsonKey(name: "number")
  final String number;
  @JsonKey(name: "date")
  final DateTime date;
  @JsonKey(name: "driver_id")
  final int driverId;


  Trip({
    required this.number,
    required this.date,
    required this.driverId,
  });
  factory Trip.fromJson(Map<String, dynamic> json) =>
      _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}

