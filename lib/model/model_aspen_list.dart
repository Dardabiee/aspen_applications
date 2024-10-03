class AspenPlace{
  String name;
  String description;
  String rate;
  String ticketPrice;
  String imageAsset;

  static var length;

  AspenPlace({
  required this.name,
  required this.description,
  required this.rate,
  required this.ticketPrice,
  required this.imageAsset,
  });
}

var aspenList = [
  AspenPlace(
    name: "Bromo",
    description: "Gunung Bromo atau dalam bahasa Tengger dieja 'Brama', juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia.", 
    rate: "4.3", 
    ticketPrice: "75", 
    imageAsset: "assets/images/bromo-mountain.jpg"),
    AspenPlace(
    name: "B=jji",
    description: "Gunung Bromo atau dalam bahasa Tengger dieja 'Brama', juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia.", 
    rate: "4.3", 
    ticketPrice: "75", 
    imageAsset: "assets/images/bromo-mountain.jpg")
];