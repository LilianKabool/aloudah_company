// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_manifest_bm_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManifestBmEntity _$GetManifestBmEntityFromJson(Map<String, dynamic> json) =>
    GetManifestBmEntity(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetManifestBmEntityToJson(
        GetManifestBmEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      manifest: Manifest.fromJson(json['manifest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'manifest': instance.manifest,
    };

Manifest _$ManifestFromJson(Map<String, dynamic> json) => Manifest(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String,
      status: json['status'] as String,
      generalTotal: json['general_total'] as String,
      discount: (json['discount'] as num).toInt(),
      netTotal: json['net_total'] as String,
      miscPaid: json['misc_paid'] as String,
      againstShipping: json['against_shipping'] as String,
      adapter: json['adapter'] as String,
      advance: json['advance'] as String,
      collection: json['collection'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      tripId: json['trip_id'] as String?,
      shippings: (json['shippings'] as List<dynamic>)
          .map((e) => Shipping.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManifestToJson(Manifest instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'status': instance.status,
      'general_total': instance.generalTotal,
      'discount': instance.discount,
      'net_total': instance.netTotal,
      'misc_paid': instance.miscPaid,
      'against_shipping': instance.againstShipping,
      'adapter': instance.adapter,
      'advance': instance.advance,
      'collection': instance.collection,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'trip_id': instance.tripId,
      'shippings': instance.shippings,
    };

Shipping _$ShippingFromJson(Map<String, dynamic> json) => Shipping(
      id: (json['id'] as num).toInt(),
      sourceId: (json['source_id'] as num).toInt(),
      destinationId: (json['destination_id'] as num).toInt(),
      manifestId: (json['manifest_id'] as num).toInt(),
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      senderNumber: json['sender_number'] as String,
      receiverNumber: json['receiver_number'] as String,
      number: (json['number'] as num).toInt(),
      priceId: (json['price_id'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      size: json['size'] as String,
      content: json['content'] as String,
      marks: json['marks'] as String,
      notes: json['notes'] as String,
      shippingCost: json['shipping_cost'] as String,
      againstShipping: json['against_shipping'] as String,
      adapter: json['adapter'] as String,
      advance: json['advance'] as String,
      miscellaneous: json['miscellaneous'] as String,
      prepaid: json['prepaid'] as String,
      discount: json['discount'] as String,
      collection: json['collection'] as String,
      manifestNumber: json['manifest_number'] as String,
      barcode: json['barcode'] as String,
      quantity: (json['quantity'] as num).toInt(),
      received: (json['received'] as num).toInt(),
      source: json['source'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ShippingToJson(Shipping instance) => <String, dynamic>{
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
      'source': instance.source,
      'type': instance.type,
    };
