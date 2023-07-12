class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feels_like;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.wind,
      required this.humidity,
      required this.pressure,
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
