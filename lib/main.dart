import 'package:flutter/material.dart';
import 'di.dart';
import 'presentation/screens/weather_screen.dart';

void main() {
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WeatherScreenProvider());
  }
}
