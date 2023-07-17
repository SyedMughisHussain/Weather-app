import 'package:flutter/material.dart';

Widget addtionalInformation(
    String tempMin, String tempMax, String pressure, String visibility) {
  return Container(
    padding: const EdgeInsets.all(18),
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  'Temp Min',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  tempMin,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Temp Max',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  tempMax,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  'Pressure',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  pressure,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Visibility',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  visibility,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
