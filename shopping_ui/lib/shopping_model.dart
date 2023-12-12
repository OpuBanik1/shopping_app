class CustomHttp {
  String? text, image;

  int? price;

  CustomHttp(this.text, this.image, this.price);

  static List<CustomHttp> product = [
    CustomHttp("New Fashion", "images/img_1.jpg", 500),
    CustomHttp("Gucci ", "images/img_2.jpg", 700),
    CustomHttp("Lebis", "images/img_3.jpg", 900),
    CustomHttp("Apex", "images/img_4.jpg", 1000),
    CustomHttp("Bata", "images/img_5.jpg", 500),
    CustomHttp("Gucci", "images/img_6.jpg", 800),
  ];
}
