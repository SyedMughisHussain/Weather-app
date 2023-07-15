import 'package:flutter/material.dart';

Widget addtionalInformation(
    String tempMin, String tempMax, String pressure, String visibility) {
  return Container(
    padding: const EdgeInsets.all(18),
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Temp Min',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              tempMin,
            ),
            const Text(
              'Temp Max',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              tempMax,
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
              'Visibility',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              visibility,
            )
          ],
        ),
      ],
    ),
  );
}
