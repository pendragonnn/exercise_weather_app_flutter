// class WeatherDataCurrent {
//   final Current current;
//   WeatherDataCurrent({required this.current});

class Wind {
  double speed;
  int deg;
  double? gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        if(gust != null) "gust" : gust,
      };
}
