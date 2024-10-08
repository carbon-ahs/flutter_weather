import 'dart:convert';

import 'package:weather/data/data_provider/weather_data_provider.dart';
import 'package:weather/data/models/weather_model.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;

  WeatherRepository(this.weatherDataProvider);

  Future<WeatherModel> getCurrentWeather() async {
    try {
      // String cityName = 'London';
      // todo: Add lat long
      final weatherData = await weatherDataProvider.getCurrentWeather();
      final data = jsonDecode(weatherData);
      if (data['cod'] != 200) {
        throw 'An unexpected error!';
      }
      return WeatherModel.fromMap(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
