// class WeatherDataCurrent {
//   final Current current;
//   WeatherDataCurrent({required this.current});

class Clouds {
    int all;

    Clouds({
        required this.all,
    });

    factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"],
    );

    Map<String, dynamic> toJson() => {
        "all": all,
    };
}
