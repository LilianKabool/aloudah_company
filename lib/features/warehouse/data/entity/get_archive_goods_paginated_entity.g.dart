// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_archive_goods_paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetArchiveGoodsPaginatedEntity _$GetArchiveGoodsPaginatedEntityFromJson(
        Map<String, dynamic> json) =>
    GetArchiveGoodsPaginatedEntity(
      id: (json['id'] as num).toInt(),
      warehouseId: (json['warehouse_id'] as num).toInt(),
      type: json['type'] as String,
      quantity: (json['quantity'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      size: json['size'] as String,
      content: json['content'] as String,
      marks: json['marks'] as String,
      truck: json['truck'] as String,
      driver: json['driver'] as String,
      destination: json['destination'] as String,
      shipDate: json['ship_date'] as String,
      date: json['date'] as String,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      barcode: json['barcode'] as String,
    );

Map<String, dynamic> _$GetArchiveGoodsPaginatedEntityToJson(
        GetArchiveGoodsPaginatedEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'warehouse_id': instance.warehouseId,
      'type': instance.type,
      'quantity': instance.quantity,
      'weight': instance.weight,
      'size': instance.size,
      'content': instance.content,
      'marks': instance.marks,
      'truck': instance.truck,
      'driver': instance.driver,
      'destination': instance.destination,
      'ship_date': instance.shipDate,
      'date': instance.date,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'barcode': instance.barcode,
    };
