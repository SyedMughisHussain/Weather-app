import 'package:flutter/material.dart';
import '../services/weather_api_client.dart';

import '../model/weather.dart';
import '../widgets/current_weather_widget.dart';
// ignore: depend_on_referenced_packages
import '../widgets/additional_information_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = (await client.getData('Faisalabad'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.menu),
        backgroundColor: const Color(0xFFf9f9f9),
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeatherWidget(
                      Icons.wb_sunny_rounded,
                      "${(data!.temp! - 273.15).toStringAsFixed(1)} ⁰C",
                      "${data!.cityName}"),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    'Additional Information',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  addtionalInformation('${data!.wind}', "${data!.pressure}",
                      "${data!.humidity}", "${data!.feels_like}"),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          }),
    );
  }
}
