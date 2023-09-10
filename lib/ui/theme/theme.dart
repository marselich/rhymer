import 'package:flutter/material.dart';

const primaryColor = Color(0xFFF82B10);
final themeData = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  scaffoldBackgroundColor: const Color(0xFFEFF1F3),
  useMaterial3: true,
  // textTheme: const TextTheme(
  //   bodyMedium: TextStyle(
  //     fontSize: 16,
  //     fontWeight: FontWeight.w600,
  //   ),
  // ),
);
