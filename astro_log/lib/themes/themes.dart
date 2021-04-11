import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final theme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.black,
    brightness: Brightness.dark,
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.black,
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

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
    color: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.red,
    ),
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.red,
  ),
);
