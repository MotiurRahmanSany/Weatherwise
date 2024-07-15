import 'package:flutter/material.dart';
import 'package:weatherwise/models/current_weather.dart';
import 'package:weatherwise/widgets/current_weather_details_widget.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({
    super.key,
    required this.currentWeatherData,
  });
  final Current currentWeatherData;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: const EdgeInsets.only(top: 0, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/weather/${currentWeatherData.weather![0].icon}.png',
                height: 80,
                width: 80,
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Text.rich(
                TextSpan(
                  text: '${currentWeatherData.temp}°C',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: '${currentWeatherData.weather![0].description}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CurrentWeatherDetailsWidget(currentDetails: currentWeatherData),
        ],
      ),
    );
  }
}
