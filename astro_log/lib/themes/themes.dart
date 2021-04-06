import 'package:flutter/material.dart';

enum ThemeColor {
  day,
  night,
}

final theme = ThemeData.light().copyWith();

final darkTheme = ThemeData.dark().copyWith();

final nightTheme = ThemeData.dark().copyWith(
  primaryTextTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.red,
    ),
  ),
);
