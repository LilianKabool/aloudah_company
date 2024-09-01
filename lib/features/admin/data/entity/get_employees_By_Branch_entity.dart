import 'package:freezed_annotation/freezed_annotation.dart';
part'get_employees_By_Branch_entity.g.dart';

@JsonSerializable()
class GetEmployeeByBranchentity {
  @JsonKey(name: "success")
  final bool success;
  @JsonKey(name: "message")

  final String message;
  @JsonKey(name: "data")

  final EmployeeEntity data;

  GetEmployeeByBranchentity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetEmployeeByBranchentity.fromJson(Map<String, dynamic> json) =>
      _$GetEmployeeByBranchentityFromJson(json);

  Map<String, dynamic> toJson() => _$GetEmployeeByBranchentityToJson(this);
}

@JsonSerializable()
class EmployeeEntity {
  @JsonKey(name: "current_page")

  final int currentPage;
  @JsonKey(name: "data")

  final List<dataforGetAllEmployee> data;
  @JsonKey(name: "first_page_url")

  final String firstPageUrl;
  @JsonKey(name: "from")

  final int from;
  @JsonKey(name: "last_page")

  final int lastPage;
  @JsonKey(name: "last_page_url")

  final String lastPageUrl;
  @JsonKey(name: "links")

  final List<Link> links;
  @JsonKey(name: "next_page_url")

  final dynamic nextPageUrl;
  @JsonKey(name: "path")

  final String path;
  @JsonKey(name: "pre_page")

  final int perPage;
  @JsonKey(name: "prev_page_url")

  final dynamic prevPageUrl;
  @JsonKey(name: "to")

  final int to;
  @JsonKey(name: "total")

  final int total;

  EmployeeEntity({
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

  factory EmployeeEntity.fromJson(Map<String, dynamic> json) =>
      _$EmployeeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeEntityToJson(this);
}

@JsonSerializable()
class dataforGetAllEmployee {
  @JsonKey(name: "name")

  final String name;
  @JsonKey(name: "id")

  final int id;
  @JsonKey(name: "email")

  final String email;
  @JsonKey(name: "phone_number")

  final String phoneNumber;
  @JsonKey(name: "manager_name")

  final String managerName;
  @JsonKey(name: "employment_date")

  final DateTime employmentDate;
  @JsonKey(name: "salary")

  final int salary;
  @JsonKey(name: "address")

  final String address;

  dataforGetAllEmployee({
    required this.id ,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.managerName,
    required this.employmentDate,
    required this.salary,
    required this.address,
  });

  factory dataforGetAllEmployee.fromJson(Map<String, dynamic> json) =>
      _$dataforGetAllEmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$dataforGetAllEmployeeToJson(this);
}
@JsonSerializable()
class Link {
  @JsonKey(name: "url")

  final String url;
  @JsonKey(name: "label")

  final String label;
  @JsonKey(name: "active")

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
