import 'package:flutter/material.dart';
import 'package:weather_app/app/data/models/weather_data_current_model.dart';
import 'package:weather_app/app/utils/custom_colors.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeatherWidget({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // temperature
        TemperatureAreaWidget(),

        SizedBox(
          height: 20,
        ),

        // windspeed, humidity, clouds
        CurrentWeatherMoreDetailsWidget(),
      ],
    );
  }

  Widget TemperatureAreaWidget() {
    return Container(
      width: 350,
      height: 400,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        color: CustomColors.cardColor,
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/weather/${weatherDataCurrent.weather?[0].icon}.png",
            height: 200,
            width: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "${weatherDataCurrent.main?.temp.round()}°",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 48,
                    ),
                  ),
                  Text(
                    "${weatherDataCurrent.weather?[0].main}",
                    style: TextStyle(
                      color: CustomColors.textColorBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "Feels like ${weatherDataCurrent.main?.feelsLike.round()}°",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CurrentWeatherMoreDetailsWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wind Speed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: CustomColors.textColorBlack,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/icons/windspeed.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${weatherDataCurrent.wind?.speed}km/h",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cloudiness",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: CustomColors.textColorBlack,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/icons/clouds.png",
                      height: 25,
                      width: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${weatherDataCurrent.clouds?.all}%",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Humidity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: CustomColors.textColorBlack,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/icons/humidity.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${weatherDataCurrent.main?.humidity}%",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
