class GetTruckParams{
  final int  branchId;


  GetTruckParams({
  required this.branchId,
});

  Map<String, dynamic> toJson() => {
  "branch_id": branchId,

  };
  }
