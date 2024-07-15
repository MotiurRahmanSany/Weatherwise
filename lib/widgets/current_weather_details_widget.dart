import 'package:flutter/material.dart';
import 'package:weatherwise/models/current_weather.dart';
import 'package:weatherwise/utils/custom_colors.dart';

class CurrentWeatherDetailsWidget extends StatelessWidget {
  const CurrentWeatherDetailsWidget({super.key, required this.currentDetails});
  final Current currentDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/icons/windspeed.png'),
              ),
              const SizedBox(height: 10),
              Text(
                '${currentDetails.windSpeed} Km/h',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/icons/clouds.png'),
              ),
              const SizedBox(height: 10),
              Text(
                '${currentDetails.clouds} %',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CustomColors.cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/icons/humidity.png'),
              ),
              const SizedBox(height: 10),
              Text(
                '${currentDetails.humidity} %',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
