// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_arrived_shipping_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetArrivedShippingEntity _$GetArrivedShippingEntityFromJson(
        Map<String, dynamic> json) =>
    GetArrivedShippingEntity(
      success: json['id'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ArrivedShipping.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetArrivedShippingEntityToJson(
        GetArrivedShippingEntity instance) =>
    <String, dynamic>{
      'id': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

ArrivedShipping _$ArrivedShippingFromJson(Map<String, dynamic> json) =>
    ArrivedShipping(
      id: (json['id'] as num).toInt(),
      sourceId: (json['source_id'] as num).toInt(),
      destinationId: (json['destination_id'] as num).toInt(),
      manifestId: json['manifest_id'] as String?,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      senderNumber: json['sender_number'] as String,
      receiverNumber: json['receiver_number'] as String,
      number: (json['number'] as num).toInt(),
      priceId: (json['price_id'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      size: json['size'] as String,
      content: json['content'] as String,
      marks: json['marks'] as String,
      notes: json['notes'] as String?,
      shippingCost: json['shipping_cost'] as String,
      againstShipping: json['against_shipping'] as String?,
      adapter: json['adapter'] as String?,
      advance: json['advance'] as String?,
      miscellaneous: json['miscellaneous'] as String?,
      prepaid: json['prepaid'] as String?,
      discount: json['discount'] as String?,
      collection: json['collection'] as String?,
      manifestNumber: json['manifest_number'] as String,
      barcode: json['barcode'] as String,
      quantity: (json['quantity'] as num).toInt(),
      received: (json['received'] as num).toInt(),
      receivingDate: DateTime.parse(json['receiving_date'] as String),
      arrivalDate: DateTime.parse(json['arrival_date'] as String),
      type: json['type'] as String,
      destination: json['destination'] as String,
      shippingDate: DateTime.parse(json['shipping_date'] as String),
    );

Map<String, dynamic> _$ArrivedShippingToJson(ArrivedShipping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_id': instance.sourceId,
      'destination_id': instance.destinationId,
      'manifest_id': instance.manifestId,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'sender_number': instance.senderNumber,
      'receiver_number': instance.receiverNumber,
      'number': instance.number,
      'price_id': instance.priceId,
      'weight': instance.weight,
      'size': instance.size,
      'content': instance.content,
      'marks': instance.marks,
      'notes': instance.notes,
      'shipping_cost': instance.shippingCost,
      'against_shipping': instance.againstShipping,
      'adapter': instance.adapter,
      'advance': instance.advance,
      'miscellaneous': instance.miscellaneous,
      'prepaid': instance.prepaid,
      'discount': instance.discount,
      'collection': instance.collection,
      'manifest_number': instance.manifestNumber,
      'barcode': instance.barcode,
      'quantity': instance.quantity,
      'received': instance.received,
      'receiving_date': instance.receivingDate.toIso8601String(),
      'arrival_date': instance.arrivalDate.toIso8601String(),
      'destination': instance.destination,
      'type': instance.type,
      'shipping_date': instance.shippingDate.toIso8601String(),
    };
