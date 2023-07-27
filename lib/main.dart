import 'package:flutter/material.dart';
import 'package:innopolis_test/presentation/weather_app_screen.dart';
import 'package:innopolis_test/data/test_data_repository.dart';

void main() {
  final repository = TestDataRepository();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WeatherAppScreen(repository: repository),
  ));
}
