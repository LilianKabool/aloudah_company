class GetAllTripsByTrucksParams {
  final String truck_id;

  GetAllTripsByTrucksParams({
    required this.truck_id,
  });

  Map<String, dynamic> toJson() => {
    'truck_id': truck_id,
  };
}
