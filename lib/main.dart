import 'package:bloc_l3/UI/weather_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = "BLoC Weather";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WeatherHome(),
    );
  }
}
