import 'package:flutter/material.dart';

import '../../domain/model/forecast_model.dart';

class ForecastWeatherWidget extends StatelessWidget {
  final List<ForecastModel>? forecastWeather;

  const ForecastWeatherWidget({super.key, required this.forecastWeather});

  @override
  Widget build(BuildContext context) {
    final days = forecastWeather;
    return ListView.builder(
      itemCount: days?.length,
      itemBuilder: (context, index) {
        final day = days?[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(day!.date),
            subtitle: Text("Средняя: ${day.avgTempC}C"),
          ),
        );
      },
    );
  }
}