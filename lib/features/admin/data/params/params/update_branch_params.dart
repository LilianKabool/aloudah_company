class UpdateBranchParams {
  final  branchId;
  final String? address;
  final String? phone;
  final String? name;
  final String? phoneNumber;
  final String? salary;

  UpdateBranchParams({
    required this.branchId,
    this.address,
    this.phone,
    this.name,
    this.phoneNumber,
    this.salary,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {'branch_id': branchId};
    if (address != null) data['address'] = address;
    if (phone != null) data['phone'] = phone;
    if (name != null) data['name'] = name;
    if (phoneNumber != null) data['phone_number'] = phoneNumber;
    if (salary != null) data['salary'] = salary;
    return data;
  }
}
