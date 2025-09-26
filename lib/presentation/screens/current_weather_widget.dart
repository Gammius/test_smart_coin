import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_smart_coin/presentation/provider/weather_provider.dart';

import '../../domain/model/weather_model.dart';

class CurrentWeatherWidget extends StatefulWidget {
  final CurrentModel? currentWeather;

  const CurrentWeatherWidget({super.key, required this.currentWeather});

  @override
  State<CurrentWeatherWidget> createState() => _CurrentWeatherWidgetState();
}

class _CurrentWeatherWidgetState extends State<CurrentWeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${widget.currentWeather?.tempC} C",
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Температура сейчас",
            style: TextStyle(fontSize: 18, color: Colors.grey[700]),
          ),
          ElevatedButton(
              onPressed: ()async {
                final provider = context.read<WeatherProvider>();
                await provider.loadCurrentWeather();
              },
              child: const Text("Обновить"))
        ],
      ),
    );
  }
}
