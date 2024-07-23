import 'package:flutter/material.dart';
import 'package:flutter_app/services/api_services.dart';
import 'screens/home_screens.dart';

void main() {
  ApiService().getTodayToons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "WEBTOON",
      home: HomeScreen(),
    );
  }
}
