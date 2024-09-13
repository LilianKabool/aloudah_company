// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shipping_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetShippingEntity _$GetShippingEntityFromJson(Map<String, dynamic> json) =>
    GetShippingEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetShippingEntityToJson(GetShippingEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num).toInt(),
      sourceId: (json['source_id'] as num).toInt(),
      sourceName: json['source_name'] as String?,
      destinationId: (json['destination_id'] as num).toInt(),
      destinationName: json['destination_name'] as String?,
      manifestNumber: json['manifest_number'] as String?,
      sender: json['sender'] as String?,
      receiver: json['receiver'] as String?,
      senderNumber: json['sender_number'] as String?,
      receiverNumber: json['receiver_number'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      type: json['type'] as String?,
      weight: (json['weight'] as num).toDouble(),
      size: json['size'] as String?,
      content: json['content'] as String?,
      marks: json['marks'] as String?,
      notes: json['notes'] as String?,
      shippingCost: json['shipping_cost'] as String?,
      againstShipping: json['against_shipping'] as String?,
      adapter: json['adapter'] as String?,
      advance: json['advance'] as String?,
      miscellaneous: json['miscellaneous'] as String?,
      prepaid: json['pre_paid'] as String?,
      discount: json['discount'] as String?,
      collection: json['collection'] as String?,
      barcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'source_id': instance.sourceId,
      'source_name': instance.sourceName,
      'destination_id': instance.destinationId,
      'destination_name': instance.destinationName,
      'manifest_number': instance.manifestNumber,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'sender_number': instance.senderNumber,
      'receiver_number': instance.receiverNumber,
      'quantity': instance.quantity,
      'type': instance.type,
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
      'pre_paid': instance.prepaid,
      'discount': instance.discount,
      'collection': instance.collection,
      'barcode': instance.barcode,
    };
