// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_prices_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricesListEntity _$PricesListEntityFromJson(Map<String, dynamic> json) =>
    PricesListEntity(
      message: json['message'] as String,
      data: AllDataForPriceList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PricesListEntityToJson(PricesListEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

AllDataForPriceList _$AllDataForPriceListFromJson(Map<String, dynamic> json) =>
    AllDataForPriceList(
      currentPage: json['current_page'],
      data: (json['data'] as List<dynamic>)
          .map((e) => dataItemPriceList.fromJson(e as Map<String, dynamic>))
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
      perPage: (json['pre_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$AllDataForPriceListToJson(
        AllDataForPriceList instance) =>
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

dataItemPriceList _$dataItemPriceListFromJson(Map<String, dynamic> json) =>
    dataItemPriceList(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String?,
      cost: (json['cost'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
    );

Map<String, dynamic> _$dataItemPriceListToJson(dataItemPriceList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'cost': instance.cost,
      'created_at': instance.createdAt?.toIso8601String(),
      'update_at': instance.updatedAt?.toIso8601String(),
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
