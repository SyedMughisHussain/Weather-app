import 'package:flutter/material.dart';

Widget addtionalInformation(
    String wind, String pressure, String humidity, String feelsLike) {
  return Container(
    padding: const EdgeInsets.all(18),
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Wind',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              wind,
            ),
            const Text(
              'Humidity',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              humidity,
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pressure',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              pressure,
            ),
            const Text(
              'Feels Like',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              feelsLike,
            )
          ],
        ),
      ],
    ),
  );
}
