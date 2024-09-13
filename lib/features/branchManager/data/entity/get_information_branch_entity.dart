import 'package:json_annotation/json_annotation.dart';

part 'get_information_branch_entity.g.dart';

@JsonSerializable()
class GetInfoBranchEntity {
  @JsonKey(name: 'desk')
  final String desk;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'manager')
  final String manager;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'openingDate')
  final DateTime openingDate;
  @JsonKey(name: 'trips')
  final List<Trip> trips;

  GetInfoBranchEntity({
    required this.desk,
    required this.address,
    required this.manager,
    required this.mobile,
    required this.openingDate,
    required this.trips,
  });


  factory GetInfoBranchEntity.fromJson(Map<String, dynamic> json) =>
      _$GetInfoBranchEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetInfoBranchEntityToJson(this);
}
@JsonSerializable()
class Trip {
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'destination')
  final String destination;

  Trip({
    required this.number,
    required this.date,
    required this.destination,
  });

  factory Trip.fromJson(Map<String, dynamic> json) =>
      _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}
