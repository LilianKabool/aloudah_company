class AddCompleintParams {
  final String message;

  AddCompleintParams({

    required this.message,
  });

  Map<String, dynamic> toJson() =>
      {
        "message": message,

      };

}