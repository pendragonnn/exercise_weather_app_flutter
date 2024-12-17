import 'dart:convert';

import 'package:weather_app/app/data/models/weather_data_current_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/app/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherDataCurrent? weatherDataCurrent;

  // processing the data from response -> json
  Future processData(lat, lon) async {
    // fetching data current weather
    var responseCurrent = await http.get(Uri.parse(apiCurrentURL(lat, lon)));
    var jsonString = jsonDecode(responseCurrent.body);
    print(jsonString);

    weatherDataCurrent = WeatherDataCurrent.fromJson(jsonString);

    return weatherDataCurrent;
  }
}
