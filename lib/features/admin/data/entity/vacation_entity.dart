
import 'package:json_annotation/json_annotation.dart';

part 'vacation_entity.g.dart';

@JsonSerializable()
class BaseAdminVacationEntity {
  @JsonKey(name: "success")
  final bool success;
  @JsonKey(name: "data")
  final List<dataForVacation> data;

  BaseAdminVacationEntity({
    required this.success,
    required this.data,
  });

  factory BaseAdminVacationEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseAdminVacationEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseAdminVacationEntityToJson(this);
}
@JsonSerializable()
class dataForVacation {
  @JsonKey(name: "id")

  final int id;
  @JsonKey(name: "user_id")

  final int userId;
  @JsonKey(name: "user_type")

  final String userType;

  @JsonKey(name: "created_by")
  final String createdBy;
  @JsonKey(name: "start")
  final DateTime start;
  @JsonKey(name: "end")
  final DateTime end;
  @JsonKey(name: "datreasona")
  final String reason;

  dataForVacation({
    required this.id,
    required this.userId,
    required this.userType,
    required this.createdBy,
    required this.start,
    required this.end,
    required this.reason,
  });

  factory dataForVacation.fromJson(Map<String, dynamic> json) =>
      _$dataForVacationFromJson(json);

  Map<String, dynamic> toJson() => _$dataForVacationToJson(this);
}
