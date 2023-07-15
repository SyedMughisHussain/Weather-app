import 'package:flutter/material.dart';

Widget currentWeatherWidget(IconData icon, String temp, String cityName) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8),
    child: Container(
      padding: const EdgeInsets.only(top: 10),
      height: 300,
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
          Text(
            cityName,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            color: Colors.orange,
            size: 64.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
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
        ],
      ),
    ),
  );
}
