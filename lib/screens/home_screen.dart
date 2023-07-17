import 'package:flutter/material.dart';
import '../services/weather_api_client.dart';

import '../model/weather.dart';
import '../widgets/additional_information_widget.dart';
import '../widgets/current_weather_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getData(
        searchController.text.isEmpty ? "Karachi" : searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
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
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(23))),
                      height: 50,
                      width: 350,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (searchController.text.isNotEmpty) {
                                  setState(() {
                                    getData();
                                  });
                                }
                              },
                              icon: const Icon(Icons.search)),
                          Expanded(
                              child: TextField(
                            cursorColor: Colors.black,
                            controller: searchController,
                            decoration: const InputDecoration(
                                fillColor: Colors.black,
                                //fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: 'Search City',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: InputBorder.none),
                            keyboardType: TextInputType.text,
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    currentWeatherWidget(
                        context,
                        Icons.wb_sunny_rounded,
                        "${data!.temp!}⁰",
                        "${data!.cityName}",
                        "${data!.wind}km/h",
                        "${data!.humidity}",
                        "${data!.clouds}",
                        '${data!.weather}'),
                    // const SizedBox(
                    //   height: 20.0,
                    // ),
                    addtionalInformation(
                        '${data!.temp_min}',
                        "${data!.temp_max}",
                        "${data!.humidity}",
                        "${data!.visibility}"),
                  ],
                ),
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
