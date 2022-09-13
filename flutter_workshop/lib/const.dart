import 'package:flutter_workshop/models/slider.dart';

class Food {
  static final food = <FoodModel>[
    FoodModel(
      image: "assets/sfsdgdsg.jpg",
      title: "Global Wellness Day",
      subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur.",
      date: DateTime.now(),
      duration: Duration(minutes: 10),
    ),
    FoodModel(
      image: "assets/2.jpg",
      title: "Health Meetup",
      subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur.",
      date: DateTime.now(),
      duration: Duration(minutes: 10),
    ),
    FoodModel(
      image: "assets/3.jpg",
      title: "Yoga Session",
      subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur.",
      date: DateTime.now(),
      duration: Duration(minutes: 10),
    ),
  ];
}

class Sliders {
  static final sliders = <SliderModel>[
    SliderModel(
        image: "assets/1.jpg", title: "Upcoming", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    SliderModel(
        image: "assets/manzara-ve-doga-fotografciligi.jpg",
        title: "Nature",
        subtitle: "There are many variations of passages of Lorem Ipsum available, but the majority."),
    SliderModel(
        image: "assets/hd-doga-manzaralari-7.jpg",
        title: "Forest",
        subtitle: "It is a long established fact that a reader will be distracted. "),
  ];
}
