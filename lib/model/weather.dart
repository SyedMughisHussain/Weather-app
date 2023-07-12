class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  // ignore: non_constant_identifier_names
  double? feels_like;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.wind,
      required this.humidity,
      required this.pressure,
      // ignore: non_constant_identifier_names
      required this.feels_like});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    pressure = json['main']['pressure'];
    feels_like = json['main']['feels_like'];
  }
}
