import 'package:weatherwise/utils/api_key.dart';

String getUrl(lat, lon) {
  const primaryUrl = 'https://api.openweathermap.org';
  final path =
      '/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metric&exclude=minutely';
  final finalUrl = primaryUrl + path;

  
  return finalUrl;
}
