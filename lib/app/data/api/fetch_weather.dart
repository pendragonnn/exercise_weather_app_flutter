import 'dart:convert';

import 'package:weather_app/app/data/models/weather_data_current_model.dart';
import 'package:weather_app/app/data/models/weather_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/app/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;
  // processing the data from response -> json
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    print(jsonString);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));

    return weatherData!;
  }
}
