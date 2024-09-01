import 'package:freezed_annotation/freezed_annotation.dart';
part'GetTrucksEntity.g.dart';

@JsonSerializable()
class GetAllTrucksentity {

  @JsonKey(name:"message")
  final String message;
  @JsonKey(name:"data")
  final List<GetAllTrucks> data;


  GetAllTrucksentity({
    required this.message,
    required this.data,
   });


  factory GetAllTrucksentity.fromJson(Map<String, dynamic> json) =>
      _$GetAllTrucksentityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllTrucksentityToJson(this);
}

@JsonSerializable()
class GetAllTrucks {
  @JsonKey(name:"id")
  final int id;
  @JsonKey(name:"number")
  final int number;
  @JsonKey(name:"line")
  final String line;
  @JsonKey(name:"created_by")
  final String  createdBy;
  @JsonKey(name:"adding_data")
  final String  addingData;
  @JsonKey(name:"editing_by")
  final String ? editingBy;
  @JsonKey(name:"editing_date")
  final String? editingDate;
  @JsonKey(name:"notes")
  final String? notes;
  @JsonKey(name:"branch_id")
  final int branchId;

  GetAllTrucks({
    required this.id,
    required this.number,
    required this.line,
    required this.createdBy,
    required this.addingData,
     this.editingBy,
     this.editingDate,
     this.notes,
    required this.branchId,
  });

  factory GetAllTrucks.fromJson(Map<String, dynamic> json) =>
      _$GetAllTrucksFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllTrucksToJson(this);
}