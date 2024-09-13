

import 'package:json_annotation/json_annotation.dart';

part 'get_trucks_by_branch_entity.g.dart';

@JsonSerializable()
class GetAllTrucksByBranchEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')

  final String message;
  @JsonKey(name: 'data')
  final List<Truck> data;

  GetAllTrucksByBranchEntity({
    required this.success,
    required this.message,
    required this.data,
  });


  factory GetAllTrucksByBranchEntity.fromJson(Map<String, dynamic> json) => _$GetAllTrucksByBranchEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllTrucksByBranchEntityToJson(this);
}
@JsonSerializable()
class Truck {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'line')
  final String line;
  @JsonKey(name: 'created_by')
  final String createdBy;
  @JsonKey(name: 'adding_data')
  final DateTime addingData;
  @JsonKey(name: 'editing_by')
  final DateTime editingBy;
  @JsonKey(name: 'editing_date')
  final DateTime editingDate;
  @JsonKey(name: 'notes')
  final String ? notes;
  @JsonKey(name: 'branch_id')
  final int branchId;


  Truck({
    required this.id,
    required this.number,
    required this.line,
    required this.createdBy,
    required this.addingData,
    required this.editingBy,
    required this.editingDate,
    required this.notes,
    required this.branchId,
  });


  factory Truck.fromJson(Map<String, dynamic> json) => _$TruckFromJson(json);

  Map<String, dynamic> toJson() => _$TruckToJson(this);
}