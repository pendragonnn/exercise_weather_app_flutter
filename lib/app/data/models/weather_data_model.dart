import 'package:weather_app/app/data/models/weather_data_current_model.dart';
import 'package:weather_app/app/data/models/weather_data_daily_model.dart';
import 'package:weather_app/app/data/models/weather_data_hourly_model.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  // final WeatherDataHourly? hourly;
  // final WeatherDataDaily? daily;

  WeatherData([this.current]);

  // WeatherData(WeatherDataCurrent weatherDataCurrent, {this.current, this.hourly, this.daily});

  WeatherDataCurrent getCurrentWeather() => current!;
  // WeatherDataHourly getHourlyWeather() => hourly!;
  // WeatherDataDaily getDailyWeather() => daily!;
}
