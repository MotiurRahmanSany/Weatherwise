import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weatherwise/controllers/weather_controller.dart';

class CityNameWidget extends StatefulWidget {
  const CityNameWidget({super.key});

  @override
  State<CityNameWidget> createState() => _CityNameWidgetState();
}

class _CityNameWidgetState extends State<CityNameWidget> {
  String city = '';
  final date = DateFormat('yMMMMd').format(DateTime.now());
  final weatherController = Get.put(WeatherController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAddress(weatherController.getLatitude().value,
        weatherController.getLongitude().value);
  }

  getAddress(lat, lon) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, lon);
    setState(() {
      city = placemarks[0].locality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topLeft,
          child: Text(
            city,
            style: const TextStyle(
              fontSize: 35,
              height: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          alignment: Alignment.topLeft,
          child: Text(
            date,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
