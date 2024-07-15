import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherwise/controllers/weather_controller.dart';
import 'package:weatherwise/utils/custom_colors.dart';
import 'package:weatherwise/widgets/circular_slider_widget.dart';
import 'package:weatherwise/widgets/current_weather_widget.dart';
import 'package:weatherwise/widgets/daily_weather_widget.dart';
import 'package:weatherwise/widgets/header_widget.dart';
import 'package:weatherwise/widgets/hourly_weather_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weatherController = Get.put(WeatherController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => weatherController.checkLoading().isTrue
              ? Center(
                  child: CircularProgressIndicator(
                    color: CustomColors.firstGradientColor,
                    backgroundColor: CustomColors.secondGradientColor.withAlpha(150),
                  ),
                )
              : ListView(
                  children: [
                    const HeaderWidget(),
                    // current Weather Widget for main temp and Icon
                    CurrentWeatherWidget(
                      currentWeatherData:
                          weatherController.weatherData.value.getCurrent(),
                    ),

                    const SizedBox(height: 8),

                    HourlyWeatherWidget(
                      hourlyWeatherData:
                          weatherController.weatherData.value.getHourly(),
                    ),

                    const SizedBox(height: 8),

                    DailyWeatherWidget(
                      dailyWeatherData:
                          weatherController.weatherData.value.getDaily(),
                    ),
                    const SizedBox(height: 8),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 18),
                      color: CustomColors.dividerLine,
                      height: 1,
                    ),

                    CircularSliderWidget(
                        requiredData:
                            weatherController.weatherData.value.getCurrent()),
                  ],
                ),
        ),
      ),
    );
  }
}
