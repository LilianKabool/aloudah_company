class AddBranchParams {
  final String address;
  final String desk;
  final String phone;
  final  branch_lng;
  final  branch_lat;


  AddBranchParams({
    required this.address,
    required this.desk,
    required this.phone,
    required this.branch_lat,
    required this.branch_lng,});

  Map<String, dynamic> toJson() => {
        "address": address,
        "desk": desk,
        "phone": phone,
        "branch_lat": branch_lat,
        "branch_lng": branch_lng,
      };
}
