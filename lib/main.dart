import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'di.dart';
import 'presentation/screens/weather_screen.dart';
import 'presentation/provider/weather_provider.dart';

void main() {
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<WeatherProvider>()),
      ],
      child: const MaterialApp(home: WeatherScreen()),
    );
  }
}
