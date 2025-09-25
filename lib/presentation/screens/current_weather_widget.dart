import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_smart_coin/presentation/provider/weather_provider.dart';

import '../../domain/model/weather_model.dart';

Widget buildCurrentWeather(BuildContext context,CurrentModel? currentWeather) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${currentWeather?.tempC} C",
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
