import 'package:json_annotation/json_annotation.dart';

part 'log_out_entity.g.dart';

@JsonSerializable()
class LogOutEntity {
  @JsonKey(name: 'message')
  final String message;

  LogOutEntity({
    required this.message,
  });

  factory LogOutEntity.fromJson(Map<String, dynamic> json) =>
      _$LogOutEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogOutEntityToJson(this);
}
