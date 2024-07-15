import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherwise/models/daily_weather.dart';
import 'package:weatherwise/utils/custom_colors.dart';
import 'package:weatherwise/utils/get_time_in_hour.dart';

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({
    super.key,
    required this.dailyWeatherData,
  });

  final List<Daily> dailyWeatherData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: CustomColors.dividerLine.withAlpha(160),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Next 7 Days Weather Forecast',
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: dailyWeatherData.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            DateFormat('E').format(
                              getTimeInHour(dailyWeatherData[index].dt!),
                            ),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            'assets/weather/${dailyWeatherData[index].weather![0].icon}.png',
                            height: 30,
                          ),
                        ),
                        Text(
                          '${dailyWeatherData[index].temp!.max}° / ${dailyWeatherData[index].temp!.min}°',
                        ),
                      ],
                    ),
                  ),
                  Container(height: 1, color: CustomColors.dividerLine),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
