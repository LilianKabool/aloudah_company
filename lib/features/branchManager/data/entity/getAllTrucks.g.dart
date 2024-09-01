// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllTrucks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

getAllTrucks _$getAllTrucksFromJson(Map<String, dynamic> json) => getAllTrucks(
      message: json['message'] as String,
      data: dataForTrucks.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$getAllTrucksToJson(getAllTrucks instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

dataForTrucks _$dataForTrucksFromJson(Map<String, dynamic> json) =>
    dataForTrucks(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => ItemForTrucks.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$dataForTrucksToJson(dataForTrucks instance) =>
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

ItemForTrucks _$ItemForTrucksFromJson(Map<String, dynamic> json) =>
    ItemForTrucks(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      line: json['line'] as String,
      createdBy: json['created_by'] as String,
      addingData: DateTime.parse(json['adding_data'] as String),
      editingBy: json['editing_by'] as String?,
      editingDate: json['editing_bate'] as String?,
      notes: json['notes'] as String?,
      branchId: (json['branch_id'] as num).toInt(),
    );

Map<String, dynamic> _$ItemForTrucksToJson(ItemForTrucks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'line': instance.line,
      'created_by': instance.createdBy,
      'adding_data': instance.addingData.toIso8601String(),
      'editing_by': instance.editingBy,
      'editing_bate': instance.editingDate,
      'notes': instance.notes,
      'branch_id': instance.branchId,
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
