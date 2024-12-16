import 'package:flutter/material.dart';
import 'package:weather_app/app/data/models/weather_data_current_model.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeatherWidget({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${weatherDataCurrent.weather[0].main}'),
    );
  }
}
