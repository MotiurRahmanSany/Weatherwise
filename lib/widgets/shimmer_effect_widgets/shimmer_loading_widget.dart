import 'package:flutter/material.dart';
import 'package:weatherwise/widgets/shimmer_effect_widgets/shimmer_city_name.dart';
import 'package:weatherwise/widgets/shimmer_effect_widgets/shimmer_current_weather_widget.dart';
import 'package:weatherwise/widgets/shimmer_effect_widgets/shimmer_daily_widget.dart';
import 'package:weatherwise/widgets/shimmer_effect_widgets/shimmer_hourly_widget.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ShimmerCityName(),
        ShimmerCurrentWeatherWidget(),
        SizedBox(height: 18),
        ShimmerHourlyWidget(),
        SizedBox(height: 8),
        ShimmerDailyWidget(),
      ],
    );
  }
}
