import 'dart:convert';
import '../model/weather.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather>? getData(String? location) async {
    final endPoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ed9762be5575457144a931c00af77267');
    final response = await http.get(endPoint);
    final body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
