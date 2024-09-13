import 'package:json_annotation/json_annotation.dart';

part 'get_all_customers_entity.g.dart';

@JsonSerializable()
class GetAllCustomerBmEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final ListOfCustomers data;

  GetAllCustomerBmEntity({
    required this.success,
    required this.message,
    required this.data,
  });


  factory GetAllCustomerBmEntity.fromJson(Map<String, dynamic> json) =>
      _$GetAllCustomerBmEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllCustomerBmEntityToJson(this);
}

@JsonSerializable()
class ListOfCustomers {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'data')
  final List<Customer> data;
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
  final dynamic nextPageUrl;
  @JsonKey(name: 'path')
  final String path;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  @JsonKey(name: 'to')
  final int to;
  @JsonKey(name: 'total')
  final int total;


  ListOfCustomers({
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


  factory ListOfCustomers.fromJson(Map<String, dynamic> json) =>
      _$ListOfCustomersFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfCustomersToJson(this);
}
@JsonSerializable()
class Customer {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'national_id')
  final String nationalId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'phone_number')
  final int phoneNumber;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'address_detail')
  final String addressDetail;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'added_by')
  final String addedBy;
  @JsonKey(name: 'device_token')
  final String ? deviceToken;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;


  Customer({
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


  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'active')
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });


  factory Link.fromJson(Map<String, dynamic> json) =>
      _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

