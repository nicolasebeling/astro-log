import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final theme = ThemeData.light().copyWith(
  primaryColor: Colors.blue[800],
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
  ),
);

final darkTheme = ThemeData.dark().copyWith();

final nightTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  primaryTextTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.red,
    ),
  ),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.red,
    ),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.red,
    ),
  ),
);
