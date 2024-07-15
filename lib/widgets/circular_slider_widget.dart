import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:weatherwise/models/current_weather.dart';
import 'package:weatherwise/utils/custom_colors.dart';

class CircularSliderWidget extends StatelessWidget {
  const CircularSliderWidget({super.key, required this.requiredData});
  final Current requiredData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Comfort Level'),
          const SizedBox(height: 20),
          SleekCircularSlider(
            min: 0,
            max: 100,
            initialValue: requiredData.humidity!.toDouble(),
            appearance: CircularSliderAppearance(
              size: 160,
              customColors: CustomSliderColors(
                hideShadow: true,
                trackColor: CustomColors.firstGradientColor.withAlpha(100),
                progressBarColors: [
                  CustomColors.firstGradientColor,
                  CustomColors.secondGradientColor,
                ],
              ),
              customWidths: CustomSliderWidths(
                handlerSize: 0,
                trackWidth: 15,
                progressBarWidth: 15,
              ),
              infoProperties: InfoProperties(
                bottomLabelText: 'Humidity',
                bottomLabelStyle: const TextStyle(
                  color: Colors.black,
                  letterSpacing: .1,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text.rich(
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  height: 2,
                ),
                TextSpan(
                    text: 'Feels Like: ',
                    children: [TextSpan(text: '${requiredData.feelsLike}')]),
              ),
              Text.rich(
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  height: 2,
                ),
                TextSpan(
                    text: 'UV Index: ',
                    children: [TextSpan(text: '${requiredData.uvi}')]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
