import 'package:flutter/material.dart';
import 'package:flutter_workshop/date_time.dart';
import 'package:flutter_workshop/metods.dart';
import 'package:flutter_workshop/models/slider.dart';

class FoodContainer extends StatelessWidget {
  FoodContainer({Key? key, required this.food}) : super(key: key);
  String date = DateTime.now().toString();
  final FoodModel food;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Container(
            width: 350,
            height: 235,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff787878),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.asset(food.image)),
                SizedBox(
                  height: 8,
                ),
                Text(
                  food.title,
                  style: textStil(FontWeight.w700, Colors.white, 17),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  food.subtitle,
                  style: textStil(FontWeight.w400, Color(0xff787878), 13),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      food.date.formatDay + " - ",
                      style: textStil(FontWeight.w400, Color(0xff787878), 13),
                    ),
                    Text(
                      food.date.formatHour + " - ",
                      style: textStil(FontWeight.w400, Color(0xff787878), 13),
                    ),
                    Text(
                      food.duration.formatTime,
                      style: textStil(FontWeight.w400, Color(0xff787878), 13),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.person_outline_outlined,
                      color: Color(0xff787878),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "213",
                      style: textStil(FontWeight.w400, Color(0xff787878), 13),
                    ),
                  ],
                ),
              ],
            )));
  }

  /*String time(Duration _duration) {
    int seconds = food.duration.inSeconds;
    final hours = (seconds / 3600).floor();
    seconds -= hours * 3600;
    final minutes = (seconds / 60).floor();
    seconds -= minutes * 60;
    if (hours == 0 && minutes == 0) return "$seconds sec";
    if (hours == 0 && seconds == 0) return "$minutes min";
    if (minutes == 0 && seconds == 0) return "$hours hour";

    if (hours == 0) return "$minutes min $seconds sec";
    if (minutes == 0) return "$hours hour $seconds sec";
    return "$hours hour $minutes min $seconds sec";
  }

  String _hour(DateTime _date) {
    return _date.hour.toString().padLeft(2, "0") + ":" + _date.minute.toString().padLeft(2, "0");
  }

  String hour(DateTime _date) {
    return DateFormat("h:mm a").format(_date);
  }

  String day(DateTime date_) {
    final now = DateTime.now();
    if (now.year == date_.year && now.month == date_.month && now.day == date_.day) {
      return "Today";
    } else if (now.year == date_.year && now.month == date_.month && now.day == date_.day + 1) {
      return "Yesterday";
    } else {
      return DateFormat.yMMMd().format(date_);
    }
  }*/
}
