import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:weatherwise/screens/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Future.delayed(const Duration(seconds: 5));
  // FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherWise',
      home: HomeScreen(),
    );
  }
}
