import 'package:json_annotation/json_annotation.dart';

part 'get_customers_paginated_entity.g.dart';

@JsonSerializable()
class GetCustomerAdminPaginatedEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final Data data;

  GetCustomerAdminPaginatedEntity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetCustomerAdminPaginatedEntity.fromJson(Map<String, dynamic> json) =>
      _$GetCustomerAdminPaginatedEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetCustomerAdminPaginatedEntityToJson(this);
}
@JsonSerializable()
class Data {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'data')
  final List<customerEntity> data;
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @JsonKey(name: 'from')
  final int from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @JsonKey(name: 'links')
  final List<Link> links;
  @JsonKey(name: 'next_page_url')
  final String ? nextPageUrl;
  @JsonKey(name: 'path')
  final String path;
  @JsonKey(name: 'pre_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final String ? prevPageUrl;
  @JsonKey(name: 'to')
  final int to;
  @JsonKey(name: 'total')
  final int total;

  Data({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataToJson(this);
}
@JsonSerializable()
class customerEntity {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'national_id')
  final String ?  nationalId;
  @JsonKey(name: 'name')
  final String ? name;
  @JsonKey(name: 'password')
  final String ? password;
  @JsonKey(name: 'phone_number')
  final int phoneNumber;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'address')
  final String ? address;
  @JsonKey(name: 'address_detail')
  final String ?  addressDetail;
  @JsonKey(name: 'notes')
  final String ? notes;
  @JsonKey(name: 'added_by')
  final String addedBy;
  @JsonKey(name: 'device_token')
  final String ? deviceToken;
  @JsonKey(name: 'created_at')
  final String ? createdAt;
  @JsonKey(name: 'updated_at')
  final String ? updatedAt;


  customerEntity({
    required this.id,
    required this.nationalId,
    required this.name,
    required this.password,
    required this.phoneNumber,
    required this.gender,
    required this.mobile,
    required this.address,
    required this.addressDetail,
    required this.notes,
    required this.addedBy,
    required this.deviceToken,
    required this.createdAt,
    required this.updatedAt,
  });

  factory customerEntity.fromJson(Map<String, dynamic> json) =>
      _$customerEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$customerEntityToJson(this);
}
@JsonSerializable()
class Link {
  @JsonKey(name: 'url')
  final String ? url;
  @JsonKey(name: 'label')
  final String ? label;
  @JsonKey(name: 'active')
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) =>
      _$LinkFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LinkToJson(this);
}