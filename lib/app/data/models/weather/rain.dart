// class WeatherDataCurrent {
//   final Current current;
//   WeatherDataCurrent({required this.current});

class Rain {
    double the1H;

    Rain({
        required this.the1H,
    });

    factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the1H: json["1h"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "1h": the1H,
    };
}
