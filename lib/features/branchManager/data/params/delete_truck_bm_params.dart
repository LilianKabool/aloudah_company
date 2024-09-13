class DeleteTrukBMParams {
  final String truck_id;

  DeleteTrukBMParams({
    required this.truck_id,
  });

  Map<String, dynamic> toJson() => {
    "truck_id": truck_id,
  };
}
