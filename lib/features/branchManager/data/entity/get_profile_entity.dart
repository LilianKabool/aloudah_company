

import 'package:json_annotation/json_annotation.dart';

part 'get_profile_entity.g.dart';

@JsonSerializable()

class GetProfileEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final dataOfProfile data;
  @JsonKey(name: 'message')
  final String message;

  GetProfileEntity({
    required this.success,
    required this.data,
    required this.message,
  });


  factory GetProfileEntity.fromJson(Map<String, dynamic> json) => _$GetProfileEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileEntityToJson(this);
}

@JsonSerializable()

class dataOfProfile {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'rank')
  final String rank;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone_number')
  final int phoneNumber;
  @JsonKey(name: 'manager_address')
  final String managerAddress;
  @JsonKey(name: 'date_of_birth')
  final DateTime dateOfBirth;

  dataOfProfile({
    required this.name,
    required this.rank,

    required this.email,
    required this.phoneNumber,
    required this.managerAddress,
    required this.dateOfBirth,
  });


  factory dataOfProfile.fromJson(Map<String, dynamic> json) => _$dataOfProfileFromJson(json);

  Map<String, dynamic> toJson() => _$dataOfProfileToJson(this);
}
