import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherwise/models/weather_model.dart';
import 'package:weatherwise/utils/api_url.dart';

class FetchWeatherData {
  Future<WeatherData> fetchWeatherData(lat, lon) async {
    final response = await http.get(Uri.parse(getUrl(lat, lon)));

    final jsonString = jsonDecode(response.body);

    final weatherData = WeatherData.fromJson(jsonString);

    return weatherData;
  }
}
