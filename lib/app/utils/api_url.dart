import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiURL(var lat, var lon) {
  String url;
  var apiKey = dotenv.env["API_KEY"];
  url =
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric";
  return url;
}
