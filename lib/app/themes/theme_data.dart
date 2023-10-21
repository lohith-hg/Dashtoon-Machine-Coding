import 'package:dashtoon_machine_coding/app/constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  primarySwatch: primaryColor,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
  ),
);
