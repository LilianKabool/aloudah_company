import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_prices_list_entity.g.dart';

@JsonSerializable()
class PricesListEntity {

  @JsonKey(name: "message")
  final String   message;
  @JsonKey(name: "data")
  final AllDataForPriceList data;

  PricesListEntity({

    required this.message,
    required this.data,
  });

  factory PricesListEntity.fromJson(Map<String, dynamic> json) =>
      _$PricesListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PricesListEntityToJson(this);
}

@JsonSerializable()
class AllDataForPriceList {
  @JsonKey(name: "current_page")
  final  currentPage;
  @JsonKey(name: "data")
  final List<dataItemPriceList> data;
  @JsonKey(name: "first_page_url")
  final String  firstPageUrl;
  @JsonKey(name: "from")
  final int from;
  @JsonKey(name: "last_page")
  final int lastPage;
  @JsonKey(name: "last_page_url")
  final String  lastPageUrl;
  @JsonKey(name: "links")
  final List<Link> links;
  @JsonKey(name: "next_page_url")
  final String ? nextPageUrl;
  @JsonKey(name: "path")
  final String   path;
  @JsonKey(name: "pre_page")
  final int perPage;
  @JsonKey(name: "prev_page_url")
  final String ? prevPageUrl;
  @JsonKey(name: "to")
  final int to;
  @JsonKey(name: "total")
  final int total;

  AllDataForPriceList({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory AllDataForPriceList.fromJson(Map<String, dynamic> json) =>
      _$AllDataForPriceListFromJson(json);

  Map<String, dynamic> toJson() => _$AllDataForPriceListToJson(this);
}

@JsonSerializable()
class dataItemPriceList {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "type")
  final String ? type;
  @JsonKey(name: "cost")
  final int cost;
  @JsonKey(name: "created_at")
  final DateTime  ? createdAt;
  @JsonKey(name: "update_at")
  final DateTime ? updatedAt;

  dataItemPriceList({
    required this.id,
    required this.type,
    required this.cost,
    required this.createdAt,
    required this.updatedAt,
  });

  factory dataItemPriceList.fromJson(Map<String, dynamic> json) =>
      _$dataItemPriceListFromJson(json);

  Map<String, dynamic> toJson() => _$dataItemPriceListToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: "url")
  final String ? url;
  @JsonKey(name: "label")
  final String ? label;
  @JsonKey(name: "active")
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
