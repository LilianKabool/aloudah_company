class GetShippingParams {
  final String id;

  GetShippingParams({
    required this.id,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
  };
}
