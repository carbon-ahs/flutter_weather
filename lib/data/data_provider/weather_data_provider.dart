import 'package:http/http.dart' as http;

import '../../secrets.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather() async {
    try {
      final res = await http.get(
        Uri.parse(
          // 'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
          'https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid=$openWeatherAPIKey',
        ),
      );
      print(res.body.toString());
      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
