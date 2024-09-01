class LogInAdminParams {
  final String name;
  final String password;
final String  device_token ;
  LogInAdminParams({required this.name, required this.password, required this.device_token});

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
    "device_token":device_token,
  };
}
