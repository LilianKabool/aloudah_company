import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:json_annotation/json_annotation.dart';

part 'getAllTrucks.g.dart';

@JsonSerializable()
class getAllTrucks {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  final dataForTrucks data;

  getAllTrucks({

    required this.message,
    required this.data,
  });

  factory getAllTrucks.fromJson(Map<String, dynamic> json) => _$getAllTrucksFromJson(json);

  Map<String, dynamic> toJson() => _$getAllTrucksToJson(this);
}

@JsonSerializable()
class dataForTrucks {
  @JsonKey(name: "current_page")
  final int currentPage;
  @JsonKey(name: "data")
  final List<ItemForTrucks> data;
  @JsonKey(name: "first_page_url")
  final String firstPageUrl;
  @JsonKey(name: "from")
  final int from;
  @JsonKey(name: "last_page")
  final int lastPage;
  @JsonKey(name: "last_page_url")
  final String lastPageUrl;
  @JsonKey(name: "links")
  final List<Link> links;
  @JsonKey(name: "next_page_url")
  final String ? nextPageUrl;
  @JsonKey(name: "path")
  final String path;
  @JsonKey(name: "per_page")
  final int perPage;
  @JsonKey(name: "prev_page_url")
  final String ? prevPageUrl;
  @JsonKey(name: "to")
  final int to;
  @JsonKey(name: "total")
  final int total;


  dataForTrucks({
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

  factory dataForTrucks.fromJson(Map<String, dynamic> json) => _$dataForTrucksFromJson(json);

  Map<String, dynamic> toJson() => _$dataForTrucksToJson(this);
}
@JsonSerializable()
class ItemForTrucks {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "number")
  final int number;
  @JsonKey(name: "line")
  final String line;
  @JsonKey(name: "created_by")
  final String createdBy;
  @JsonKey(name: "adding_data")
  final DateTime addingData;
  @JsonKey(name: "editing_by")
  final String ?  editingBy;
  @JsonKey(name: "editing_bate")
  final String ?  editingDate;
  @JsonKey(name: "notes")
  final String ?  notes;
  @JsonKey(name: "branch_id")
  final int branchId;

  ItemForTrucks({
    required this.id,
    required this.number,
    required this.line,
    required this.createdBy,
    required this.addingData,
    required this.editingBy,
    required this.editingDate,
    required this.notes,
    required this.branchId,
  });

  factory ItemForTrucks.fromJson(Map<String, dynamic> json) => _$ItemForTrucksFromJson(json);

  Map<String, dynamic> toJson() => _$ItemForTrucksToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: "url")
  final String url;
  @JsonKey(name: "label")
  final String label;
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