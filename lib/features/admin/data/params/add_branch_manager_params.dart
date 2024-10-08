class AddBranchManagerParams {
  final String address;
  final String desk;
  final String phone;
  final  nationalId;
  final String managerName;
  final  branchId;
  final String email;
  final String phoneNumber;
  final String gender;
  final String motherName;
  final String dateOfBirth;
  final String managerAddress;
  final String salary;
  final String rank;

  AddBranchManagerParams(
      {required this.address,
      required this.desk,
      required this.phone,
      required this.nationalId,
      required this.managerName,
      required this.branchId,
      required this.email,
      required this.phoneNumber,
      required this.gender,
      required this.motherName,
      required this.dateOfBirth,
      required this.managerAddress,
      required this.salary,
      required this.rank});

  Map<String, dynamic> toJson() => {
        "address": address,
        "desk": desk,
        "phone": phone,
        "national_id": nationalId,
        "manager_name": managerName,
        "branch_id": branchId,
        "email": email,
        "phone_number": phoneNumber,
        "gender": gender,
        "mother_name": motherName,
        "date_of_birth": dateOfBirth,
        "manager_address": managerAddress,
        "salary": salary,
        "rank": rank,
      };
}
