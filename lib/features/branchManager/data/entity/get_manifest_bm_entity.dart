import 'package:json_annotation/json_annotation.dart';

part 'get_manifest_bm_entity.g.dart';

@JsonSerializable()
class GetManifestBmEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final Data data;

  GetManifestBmEntity({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetManifestBmEntity.fromJson(Map<String, dynamic> json) =>
      _$GetManifestBmEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetManifestBmEntityToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'manifest')
  final Manifest manifest;

  Data({
    required this.manifest,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Manifest {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'number')
  final String number;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'general_total')
  final String generalTotal;
  @JsonKey(name: 'discount')
  final int discount;
  @JsonKey(name: 'net_total')
  final String netTotal;
  @JsonKey(name: 'misc_paid')
  final String miscPaid;
  @JsonKey(name: 'against_shipping')
  final String againstShipping;
  @JsonKey(name: 'adapter')
  final String adapter;
  @JsonKey(name: 'advance')
  final String advance;
  @JsonKey(name: 'collection')
  final String collection;
  @JsonKey(name: 'created_at')
  final String ?  createdAt;
  @JsonKey(name: 'updated_at')
  final String ? updatedAt;
  @JsonKey(name: 'trip_id')
  final String ? tripId;
  @JsonKey(name: 'shippings')
  final List<Shipping> shippings;

  Manifest({
    required this.id,
    required this.number,
    required this.status,
    required this.generalTotal,
    required this.discount,
    required this.netTotal,
    required this.miscPaid,
    required this.againstShipping,
    required this.adapter,
    required this.advance,
    required this.collection,
    required this.createdAt,
    required this.updatedAt,
    required this.tripId,
    required this.shippings,
  });

  factory Manifest.fromJson(Map<String, dynamic> json) =>
      _$ManifestFromJson(json);

  Map<String, dynamic> toJson() => _$ManifestToJson(this);
}

@JsonSerializable()
class Shipping {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'source_id')
  final int sourceId;
  @JsonKey(name: 'destination_id')
  final int destinationId;
  @JsonKey(name: 'manifest_id')
  final int manifestId;
  @JsonKey(name: 'sender')
  final String sender;
  @JsonKey(name: 'receiver')
  final String receiver;
  @JsonKey(name: 'sender_number')
  final String senderNumber;
  @JsonKey(name: 'receiver_number')
  final String receiverNumber;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'price_id')
  final int priceId;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'size')
  final String size;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'marks')
  final String marks;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'shipping_cost')
  final String shippingCost;
  @JsonKey(name: 'against_shipping')
  final String againstShipping;
  @JsonKey(name: 'adapter')
  final String adapter;
  @JsonKey(name: 'advance')
  final String advance;
  @JsonKey(name: 'miscellaneous')
  final String miscellaneous;
  @JsonKey(name: 'prepaid')
  final String prepaid;
  @JsonKey(name: 'discount')
  final String discount;
  @JsonKey(name: 'collection')
  final String collection;
  @JsonKey(name: 'manifest_number')
  final String manifestNumber;
  @JsonKey(name: 'barcode')
  final String barcode;
  @JsonKey(name: 'quantity')
  final int quantity;
  @JsonKey(name: 'received')
  final int received;
  @JsonKey(name: 'source')
  final String source;
  @JsonKey(name: 'type')
  final String type;

  Shipping({
    required this.id,
    required this.sourceId,
    required this.destinationId,
    required this.manifestId,
    required this.sender,
    required this.receiver,
    required this.senderNumber,
    required this.receiverNumber,
    required this.number,
    required this.priceId,
    required this.weight,
    required this.size,
    required this.content,
    required this.marks,
    required this.notes,
    required this.shippingCost,
    required this.againstShipping,
    required this.adapter,
    required this.advance,
    required this.miscellaneous,
    required this.prepaid,
    required this.discount,
    required this.collection,
    required this.manifestNumber,
    required this.barcode,
    required this.quantity,
    required this.received,
    required this.source,
    required this.type,
  });

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}
