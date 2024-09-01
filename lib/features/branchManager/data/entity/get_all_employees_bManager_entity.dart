import 'package:json_annotation/json_annotation.dart';

part 'get_all_employees_bManager_entity.g.dart';
@JsonSerializable()
class GetAllEmployeesEntity {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  final List<dataOfEmployee> data;

  GetAllEmployeesEntity({
    required this.status,
    required this.message,
    required this.data,
  });

  factory GetAllEmployeesEntity.fromJson(Map<String, dynamic> json) => _$GetAllEmployeesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllEmployeesEntityToJson(this);
}
@JsonSerializable()
class dataOfEmployee {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  dataOfEmployee({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  factory dataOfEmployee.fromJson(Map<String, dynamic> json) => _$dataOfEmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$dataOfEmployeeToJson(this);
}