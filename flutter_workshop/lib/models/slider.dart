class SliderModel {
  final String image;
  final String title;
  final String subtitle;

  SliderModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

class FoodModel {
  final String image;
  final String title;
  final String subtitle;
  final DateTime date;
  final Duration duration;

  FoodModel(
      {required this.image, required this.title, required this.subtitle, required this.date, required this.duration});
}
