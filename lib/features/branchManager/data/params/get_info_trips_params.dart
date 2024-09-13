class GetInfoTripsParams {
  final String tripNumber;

  GetInfoTripsParams({
    required this.tripNumber,
  });

  Map<String, dynamic> toJson() => {
    'number': tripNumber,
  };
}
