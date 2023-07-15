class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  // ignore: non_constant_identifier_names
  int? visibility;
  int? clouds;
  // ignore: non_constant_identifier_names
  double? temp_min;
  // ignore: non_constant_identifier_names
  double? temp_max;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.wind,
      required this.humidity,
      required this.pressure,
      // ignore: non_constant_identifier_names
      required this.visibility,
      required this.clouds,
      // ignore: non_constant_identifier_names
      required this.temp_min,
      // ignore: non_constant_identifier_names
      required this.temp_max});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    pressure = json['main']['pressure'];
    visibility = json['visibility'];
    clouds = json['clouds']['all'];
    temp_min = json['main']['temp_min'];
    temp_max = json['main']['temp_max'];
  }
}
