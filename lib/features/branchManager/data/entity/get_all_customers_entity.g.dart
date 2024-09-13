// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_customers_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCustomerBmEntity _$GetAllCustomerBmEntityFromJson(
        Map<String, dynamic> json) =>
    GetAllCustomerBmEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: ListOfCustomers.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllCustomerBmEntityToJson(
        GetAllCustomerBmEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

ListOfCustomers _$ListOfCustomersFromJson(Map<String, dynamic> json) =>
    ListOfCustomers(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
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
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$ListOfCustomersToJson(ListOfCustomers instance) =>
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
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: (json['id'] as num).toInt(),
      nationalId: json['national_id'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      phoneNumber: (json['phone_number'] as num).toInt(),
      gender: json['gender'] as String,
      mobile: (json['mobile'] as num).toInt(),
      address: json['address'] as String,
      addressDetail: json['address_detail'] as String,
      notes: json['notes'] as String,
      addedBy: json['added_by'] as String,
      deviceToken: json['device_token'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'national_id': instance.nationalId,
      'name': instance.name,
      'password': instance.password,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'mobile': instance.mobile,
      'address': instance.address,
      'address_detail': instance.addressDetail,
      'notes': instance.notes,
      'added_by': instance.addedBy,
      'device_token': instance.deviceToken,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
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
