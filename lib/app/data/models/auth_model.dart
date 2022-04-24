class AuthModel {
  AuthModel({
    this.success = false,
    this.requestToken = "",
    this.idUser = 0,
  });

  late bool success;
  late String requestToken;
  late int idUser;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        success: json["success"],
        requestToken: json["request_token"],
        idUser: json["id_user"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "request_token": requestToken,
        "id_user": idUser,
      };
}
