class RegisterAdminParams {
  final String name;
  final String email;
  final String phoneNumber;
  final String gender;
  final String password;
final String device_token ;
  RegisterAdminParams(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.gender,
      required this.password,
      required this.device_token,});

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "gender": gender,
        "password": password,
        "device_token":device_token ,
      };
}
