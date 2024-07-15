import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weatherwise/controllers/weather_controller.dart';
import 'package:weatherwise/models/hourly_weather.dart';
import 'package:weatherwise/utils/custom_colors.dart';
import 'package:weatherwise/utils/get_time_in_hour.dart';

class HourlyWeatherWidget extends StatelessWidget {
  HourlyWeatherWidget({
    super.key,
    required this.hourlyWeatherData,
  });

  final List<Hourly> hourlyWeatherData;
  final RxInt currentCardIndex = WeatherController().getCurrentCardIndex();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Today\'s Weather Forecast',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  hourlyWeatherData.length > 40 ? 40 : hourlyWeatherData.length,
              itemBuilder: (context, index) => Obx(
                () => GestureDetector(
                  onTap: () {
                    currentCardIndex.value = index;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.dividerLine.withAlpha(160),
                        )
                      ],
                      gradient: index == currentCardIndex.value
                          ? const LinearGradient(
                              colors: [
                                CustomColors.firstGradientColor,
                                CustomColors.secondGradientColor
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          : null,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('jm').format(
                            getTimeInHour(hourlyWeatherData[index].dt!),
                          ),
                          style: TextStyle(
                            color: currentCardIndex.value == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Image.asset(
                            'assets/weather/${hourlyWeatherData[index].weather![0].icon}.png',
                            width: 40),
                        Text(
                          '${hourlyWeatherData[index].temp}°C',
                          style: TextStyle(
                            color: currentCardIndex.value == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
