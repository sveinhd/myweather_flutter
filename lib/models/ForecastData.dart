import 'package:myweather/models/WeatherData.dart';

class ForecastData {
  final List list;

  ForecastData({required this.list});

  factory ForecastData.fromJson(Map<String, dynamic> json) {
    List list = List();

    for (dynamic e in json['list']) {
      WeatherData w = new WeatherData(
          date:
              DateTime.fromMillisecondsSinceEpoch(e['dt'] * 1000, isUtc: false),
          temp: e['main']['temp'].toDouble(),
          main: e['weather'][0]['main'],
          icon: e['weather'][0]['icon']);
      list.add(w);
    }

    return ForecastData(
      list: list,
    );
  }
}
