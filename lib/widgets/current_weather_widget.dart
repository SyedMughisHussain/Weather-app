import 'package:flutter/material.dart';

Widget currentWeatherWidget(IconData icon, String temp, String cityName) {
  return Container(
    alignment: Alignment.topCenter,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            color: Color.fromARGB(255, 5, 4, 4),
            fontSize: 35,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          cityName,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
