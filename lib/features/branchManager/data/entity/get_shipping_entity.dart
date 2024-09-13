
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_shipping_entity.g.dart';
@JsonSerializable()

class GetShippingEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final Data data;

  GetShippingEntity({
    required this.success,
    required this.message,
    required this.data,
  });


  factory GetShippingEntity.fromJson(Map<String, dynamic> json) =>
      _$GetShippingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetShippingEntityToJson(this);
}
@JsonSerializable()
class Data {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'source_id')
  final int sourceId;
  @JsonKey(name: 'source_name')
  final String? sourceName;
  @JsonKey(name: 'destination_id')
  final int destinationId;
  @JsonKey(name: 'destination_name')
  final String? destinationName;
  @JsonKey(name: 'manifest_number')
  final String? manifestNumber;
  @JsonKey(name: 'sender')
  final String? sender;
  @JsonKey(name: 'receiver')
  final String? receiver;
  @JsonKey(name: 'sender_number')
  final String? senderNumber;
  @JsonKey(name: 'receiver_number')
  final String? receiverNumber;
  @JsonKey(name: 'quantity')
  final int quantity;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'size')
  final String? size;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'marks')
  final String? marks;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'shipping_cost')
  final String? shippingCost;
  @JsonKey(name: 'against_shipping')
  final String? againstShipping;
  @JsonKey(name: 'adapter')
  final String? adapter;
  @JsonKey(name: 'advance')
  final String? advance;
  @JsonKey(name: 'miscellaneous')
  final String? miscellaneous;
  @JsonKey(name: 'pre_paid')
  final String? prepaid;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'collection')
  final String? collection;
  @JsonKey(name: 'barcode')
  final String? barcode;


  Data({
    required this.id,
    required this.sourceId,
    required this.sourceName,
    required this.destinationId,
    required this.destinationName,
    required this.manifestNumber,
    required this.sender,
    required this.receiver,
    required this.senderNumber,
    required this.receiverNumber,
    required this.quantity,
    required this.type,
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
    required this.barcode,
  });


  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}