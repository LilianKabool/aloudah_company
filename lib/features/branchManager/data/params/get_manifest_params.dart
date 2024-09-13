
class GetManifestBMParams {
  final String manifestNumber;

  GetManifestBMParams({
    required this.manifestNumber,
  });

  Map<String, dynamic> toJson() => {
    'number': manifestNumber,
  };
}
