import 'package:freezed_annotation/freezed_annotation.dart';
part'get_drivers_By_Branch_id_entity.g.dart';

@JsonSerializable()
class GetDriversByBranchentity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final datainfo data;

  GetDriversByBranchentity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetDriversByBranchentity.fromJson(Map<String, dynamic> json) =>
      _$GetDriversByBranchentityFromJson(json);

  Map<String, dynamic> toJson() => _$GetDriversByBranchentityToJson(this);
}

@JsonSerializable()
class datainfo {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'data')
  final List<DataForDriver> data;
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
  @JsonKey(name: 'pre_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  @JsonKey(name: 'to')
  final int to;
  @JsonKey(name: 'total')
  final int total;

  datainfo({
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

  factory datainfo.fromJson(Map<String, dynamic> json) =>
      _$datainfoFromJson(json);

  Map<String, dynamic> toJson() => _$datainfoToJson(this);
}

@JsonSerializable()
class DataForDriver {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'employment_date')
  final DateTime employmentDate;

  DataForDriver({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.employmentDate,
  });

  factory DataForDriver.fromJson(Map<String, dynamic> json) =>
      _$DataForDriverFromJson(json);

  Map<String, dynamic> toJson() => _$DataForDriverToJson(this);
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