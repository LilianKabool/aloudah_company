import 'package:json_annotation/json_annotation.dart';

part 'get_not_arrived_shipping_entity.g.dart';

@JsonSerializable()
class GetNotArrivedShippingEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<NotArrivedShipping> data;

  GetNotArrivedShippingEntity({
    required this.success,
    required this.message,
    required this.data,
  });


  factory GetNotArrivedShippingEntity.fromJson(Map<String, dynamic> json) => _$GetNotArrivedShippingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetNotArrivedShippingEntityToJson(this);
}
@JsonSerializable()
class NotArrivedShipping {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'source_id')
  final int sourceId;
  @JsonKey(name: 'destination_id')
  final int destinationId;
  @JsonKey(name: 'manifest_id')
  final String ? manifestId;
  @JsonKey(name: 'sender')
  final String sender;
  @JsonKey(name: 'receiver')
  final String receiver;
  @JsonKey(name: 'sender_number')
  final String senderNumber;
  @JsonKey(name: 'receuver_number')
  final String receiverNumber;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'price_id')
  final int priceId;
  @JsonKey(name: 'weight')
  final int weight;
  @JsonKey(name: 'size')
  final String size;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'marks')
  final String marks;
  @JsonKey(name: 'notes')
  final String ? notes;
  @JsonKey(name: 'shipping_cost')
  final String shippingCost;
  @JsonKey(name: 'against_shipping')
  final String ? againstShipping;
  @JsonKey(name: 'adapter')
  final String ? adapter;
  @JsonKey(name: 'advance')
  final String ? advance;
  @JsonKey(name: 'miscellaneous')
  final String ? miscellaneous;
  @JsonKey(name: 'prepaid')
  final String ? prepaid;
  @JsonKey(name: 'discount')
  final String ? discount;
  @JsonKey(name: 'collection')
  final String ? collection;
  @JsonKey(name: 'manifest_number')
  final String manifestNumber;
  @JsonKey(name: 'barcode')
  final String barcode;
  @JsonKey(name: 'quantity')
  final int quantity;
  @JsonKey(name: 'received')
  final int received;
  @JsonKey(name: 'receiving_date')
  final String ? receivingDate;
  @JsonKey(name: 'destination')
  final String destination;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'arrival_date')
  final DateTime arrivalDate;
  @JsonKey(name: 'shipping_date')
  final DateTime shippingDate;
  NotArrivedShipping({
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
    required this.receivingDate,
required this.arrivalDate ,
required this.type ,
required this.destination ,
required this.shippingDate ,

  });


  factory NotArrivedShipping.fromJson(Map<String, dynamic> json) => _$NotArrivedShippingFromJson(json);

  Map<String, dynamic> toJson() => _$NotArrivedShippingToJson(this);
}