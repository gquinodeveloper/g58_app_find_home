class ReservationModel {
  ReservationModel({
    this.idUser,
    this.idHouse,
    this.date,
    this.price,
  });

  String? idUser;
  String? idHouse;
  String? date;
  String? price;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      ReservationModel(
        idUser: json["idUser"],
        idHouse: json["idHouse"],
        date: json["date"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "idHouse": idHouse,
        "date": date,
        "price": price,
      };
}
