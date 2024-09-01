class GetDriverByBranchIdParams {
  final String branchId;

  GetDriverByBranchIdParams({required this.branchId});

  Map<String, dynamic> toJson() => {
    "branch_id": branchId,
  };
}