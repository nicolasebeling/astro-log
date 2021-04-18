import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final theme = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.black,
    brightness: Brightness.dark,
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.black,
    thickness: 1,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  accentColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.black,
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.white,
    thickness: 1,
  ),
);

final nightTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  accentColor: Colors.red,
  appBarTheme: AppBarTheme(
    color: Colors.black,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.red,
    ),
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.red,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.red,
    thickness: 1,
  ),
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
);
