import 'package:json_annotation/json_annotation.dart';

part 'get_all_branches_bm_entity.g.dart';

@JsonSerializable()
class GetAllBranchesBmEntity {
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'data')
  final ListOfBranches data;
  @JsonKey(name: 'message')
  final String message;

  GetAllBranchesBmEntity({
    required this.success,
    required this.data,
    required this.message,
  });

  factory GetAllBranchesBmEntity.fromJson(Map<String, dynamic> json) =>
      _$GetAllBranchesBmEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllBranchesBmEntityToJson(this);
}


@JsonSerializable()
class ListOfBranches {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'data')
  final List<BranchForBM> data;
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @JsonKey(name: 'from')
  final int from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @JsonKey(name: 'links')
  final List<Link> links;
  @JsonKey(name: 'next_page_url')
  final String ? nextPageUrl;
  @JsonKey(name: 'path')
  final String path;
  @JsonKey(name: 'pre_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final String ? prevPageUrl;
  @JsonKey(name: 'to')
  final int to;
  @JsonKey(name: 'total')
  final int total;

  ListOfBranches({
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


  factory ListOfBranches.fromJson(Map<String, dynamic> json) =>
      _$ListOfBranchesFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfBranchesToJson(this);
}


@JsonSerializable()
class BranchForBM {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'desk')
  final String desk;

  BranchForBM({
    required this.id,
    required this.address,
    required this.desk,
  });


  factory BranchForBM.fromJson(Map<String, dynamic> json) =>
      _$BranchForBMFromJson(json);

  Map<String, dynamic> toJson() => _$BranchForBMToJson(this);
}


@JsonSerializable()
class Link {
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'active')
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });


  factory Link.fromJson(Map<String, dynamic> json) =>
      _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

