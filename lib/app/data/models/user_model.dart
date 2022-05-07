class UserModel {
  UserModel({
    this.name = "",
    this.lastname = "",
    this.adress = "",
    this.email = "",
    this.password,
  });

  late String name;
  late String lastname;
  late String adress;
  late String email;
  String? password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        lastname: json["lastname"],
        adress: json["address"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "adress": adress,
        "email": email,
        "password": password,
      };
}
