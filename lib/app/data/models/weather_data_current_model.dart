// class WeatherDataCurrent {
//   final Current current;
//   WeatherDataCurrent({required this.current});

//   factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
//       WeatherDataCurrent(current: Current.fromJson(json['current']));
// }

// class Current {
//   int? temp;
//   int? humidity;
//   int? clouds;
//   double? uvIndex;
//   double? feelsLike;
//   double? windSpeed;
//   List<Weather>? weather;

//   Current({
//     this.temp,
//     this.humidity,
//     this.feelsLike,
//     this.clouds,
//     this.uvIndex,
//     this.windSpeed,
//     this.weather,
//   });

//   factory Current.fromJson(Map<String, dynamic> json) => Current(
//       temp: (json['temp'] as num?)?.round(),
//       feelsLike: (json['feels_like'] as num?)?.toDouble(),
//       humidity: json['humidity'] as int?,
//       uvIndex: (json['uvi'] as num?)?.toDouble(),
//       clouds: json['clouds'] as int?,
//       windSpeed: (json['wind_speed'] as num?)?.toDouble(),
//       weather: (json['weather'] as List<dynamic>?)
//           ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
//           .toList());
// }

// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   Weather({this.id, this.main, this.description, this.icon});

//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         id: json['id'] as int?,
//         main: json['main'] as String?,
//         description: json['description'] as String?,
//         icon: json['icon'] as String?,
//       );

//   Map<String, dynamic> toJson() =>
//       {'id': id, 'main': main, 'description': description, 'icon': icon};
// }

import 'dart:convert';

import 'package:weather_app/app/data/models/weather/clouds.dart';
import 'package:weather_app/app/data/models/weather/coord.dart';
import 'package:weather_app/app/data/models/weather/main.dart';
import 'package:weather_app/app/data/models/weather/rain.dart';
import 'package:weather_app/app/data/models/weather/sys.dart';
import 'package:weather_app/app/data/models/weather/weather.dart';
import 'package:weather_app/app/data/models/weather/wind.dart';

WeatherDataCurrent weatherDataCurrentFromJson(String str) => WeatherDataCurrent.fromJson(json.decode(str));

String weatherDataCurrentToJson(WeatherDataCurrent data) => json.encode(data.toJson());

class WeatherDataCurrent {
    Coord coord;
    List<Weather> weather;
    String base;
    Main main;
    int visibility;
    Wind wind;
    Rain? rain;
    Clouds clouds;
    int dt;
    Sys sys;
    int timezone;
    int id;
    String name;
    int cod;

    WeatherDataCurrent({
        required this.coord,
        required this.weather,
        required this.base,
        required this.main,
        required this.visibility,
        required this.wind,
        this.rain,
        required this.clouds,
        required this.dt,
        required this.sys,
        required this.timezone,
        required this.id,
        required this.name,
        required this.cod,
    });

    factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) => WeatherDataCurrent(
        coord: Coord.fromJson(json["coord"]),
        weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"],
        main: Main.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromJson(json["wind"]),
        rain: json["rain"] != null ? Rain.fromJson(json["rain"]) : null,
        clouds: Clouds.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
    );

    Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        if (rain != null) "rain": rain?.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
    };
}
