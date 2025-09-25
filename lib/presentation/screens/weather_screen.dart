import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/weather_provider.dart';
import 'current_weather_widget.dart';
import 'forecast_weather_widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String selectedTab = "Current";
  final tabs = ["Current", "Forecast"];

  @override
  void initState() {
    super.initState();
    final provider = context.read<WeatherProvider>();
    provider.loadCurrentWeather();
    provider.loadForecastWeather();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeatherProvider>();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Yoshkar-Ola",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedTab,
                  items: tabs
                      .map(
                        (tab) => DropdownMenuItem(value: tab, child: Text(tab)),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedTab = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: selectedTab == "Current"
                ? buildCurrentWeather(context,provider.currentWeather)
                : buildForecastWeather(provider.forecastWeather),
          ),
        ],
      ),
    );
  }
}
