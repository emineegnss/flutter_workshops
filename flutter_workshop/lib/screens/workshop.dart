import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_workshop/const.dart';
import 'package:flutter_workshop/metods.dart';
import 'package:flutter_workshop/models/slider.dart';
import 'package:flutter_workshop/widgets/food_conteiner.dart';

class Workshops extends StatefulWidget {
  const Workshops({Key? key, FoodModel? food}) : super(key: key);

  @override
  State<Workshops> createState() => _WorkshopsState();
}

class _WorkshopsState extends State<Workshops> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 28),
              child: Text(
                "Popular",
                style: textStil(FontWeight.w700, Colors.white, 21),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 310.0,
                enableInfiniteScroll: false,
                viewportFraction: 0.8,
              ),
              items: Sliders.sliders
                  .map(
                    (e) => Container(
                      margin: const EdgeInsets.only(right: 16, top: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff787878),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 205,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                e.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                e.title,
                                textAlign: TextAlign.center,
                                style: textStil(FontWeight.w700, Colors.white, 17),
                              ),
                            ),
                          ),
                          const SizedBox(height: 7),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                e.subtitle,
                                style: textStil(FontWeight.w400, Color(0xff787878), 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 28, left: 21),
              shrinkWrap: true,
              children: [
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "All Consultans",
                    style: textStil(FontWeight.w700, Colors.white, 21),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: Food.food
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: FoodContainer(food: e),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  width: 12,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//buttonNavigator
