import 'package:flutter/material.dart';

import '../../domain/model/forecast_model.dart';

Widget buildForecastWeather(List<ForecastModel>? forecastWeather) {
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