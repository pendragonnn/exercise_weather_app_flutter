import 'dart:convert';

import 'package:weather_app/app/data/models/weather_data_current_model.dart';
import 'package:weather_app/app/data/models/weather_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

String apiURL(var lat, var lon) {
  String url;
  var apiKey = dotenv.env["API_KEY"];
  url =
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey";
  return url;
}
