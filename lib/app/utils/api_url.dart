import 'package:flutter_dotenv/flutter_dotenv.dart';

var apiKey = dotenv.env["API_KEY"];

String apiCurrentURL(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric";
  return url;
}
