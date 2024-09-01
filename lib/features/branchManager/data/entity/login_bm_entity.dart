import 'package:json_annotation/json_annotation.dart';

part 'login_bm_entity.g.dart';

@JsonSerializable()
class LogInBMEntity{
  final String token;

  LogInBMEntity({required this.token});


  factory LogInBMEntity.fromJson(Map<String, dynamic> json) =>
      _$LogInBMEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogInBMEntityToJson(this);
}