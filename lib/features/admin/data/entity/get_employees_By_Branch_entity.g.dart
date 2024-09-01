// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_employees_By_Branch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEmployeeByBranchentity _$GetEmployeeByBranchentityFromJson(
        Map<String, dynamic> json) =>
    GetEmployeeByBranchentity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: EmployeeEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetEmployeeByBranchentityToJson(
        GetEmployeeByBranchentity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

EmployeeEntity _$EmployeeEntityFromJson(Map<String, dynamic> json) =>
    EmployeeEntity(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => dataforGetAllEmployee.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String,
      perPage: (json['pre_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$EmployeeEntityToJson(EmployeeEntity instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'pre_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

dataforGetAllEmployee _$dataforGetAllEmployeeFromJson(
        Map<String, dynamic> json) =>
    dataforGetAllEmployee(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      managerName: json['manager_name'] as String,
      employmentDate: DateTime.parse(json['employment_date'] as String),
      salary: (json['salary'] as num).toInt(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$dataforGetAllEmployeeToJson(
        dataforGetAllEmployee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'manager_name': instance.managerName,
      'employment_date': instance.employmentDate.toIso8601String(),
      'salary': instance.salary,
      'address': instance.address,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
