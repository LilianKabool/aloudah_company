import 'package:json_annotation/json_annotation.dart';

part 'get_customer_profile_entity.g.dart';

@JsonSerializable()
class GetCustomerProfileEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final Customer data;
  @JsonKey(name: 'message')
  final String message;

  GetCustomerProfileEntity({
    required this.success,
    required this.data,
    required this.message,
  });


  factory GetCustomerProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$GetCustomerProfileEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetCustomerProfileEntityToJson(this);
}
@JsonSerializable()
class Customer {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'address')
  final String address;

  Customer({
    required this.name,
    required this.mobile,
    required this.address,
  });


  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
