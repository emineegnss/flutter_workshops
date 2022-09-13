import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/workshop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Detail",
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      )),
      debugShowCheckedModeBanner: false,
      home: Workshops(),
    );
  }
}
