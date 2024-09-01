class GetEmployeeByBranchIdParams {
  final String branchId;

  GetEmployeeByBranchIdParams({required this.branchId});

  Map<String, dynamic> toJson() => {
    "branch_id": branchId,
  };
}