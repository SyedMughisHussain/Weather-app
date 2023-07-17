import 'package:flutter/material.dart';

Widget currentWeatherWidget(
  BuildContext context,
  IconData icon,
  String temp,
  String cityName,
  String wind,
  String humidity,
  String cloud,
  String weather,
) {
  double height = MediaQuery.of(context).size.height;
  //double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8),
    child: Container(
      height: height * 0.4,
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.purple,
              ]),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                cityName,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            color: Colors.orange,
            size: 64.0,
          ),
          Text(weather),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // Text(
          //   weather,
          //   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          Text(
            temp,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/wind.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    wind,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const Text(
                    'Wind',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/humidity.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    humidity,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const Text(
                    'Humidity',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/cloud.png',
                    height: 40,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    cloud,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const Text(
                    'Cloud',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
