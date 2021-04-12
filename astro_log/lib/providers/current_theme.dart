import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../themes/themes.dart' as themes;

class CurrentTheme with ChangeNotifier {
  bool _nightMode = false;
  ThemeMode _appearence = ThemeMode.system;

  bool get nightMode {
    return _nightMode;
  }

  ThemeData get theme {
    return _nightMode ? themes.nightTheme : themes.theme;
  }

  ThemeData get darkTheme {
    return _nightMode ? themes.nightTheme : themes.darkTheme;
  }

  ThemeMode get appearence {
    return _appearence;
  }

  Future<void> fetchThemeData() async {
    final preferences = await SharedPreferences.getInstance();
    if (preferences.containsKey('nightMode'))
      _nightMode = preferences.getBool('nightMode') ?? false;
    if (_nightMode)
      SystemChrome.setEnabledSystemUIOverlays([]);
    else
      SystemChrome.setEnabledSystemUIOverlays([
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]);
    if (preferences.containsKey('appearence'))
      _appearence = ThemeMode.values[preferences.getInt('appearence') ?? 0];
  }

  Future<bool> toggleAppearence(ThemeMode appearence) async {
    _appearence = appearence;
    notifyListeners();
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setInt('appearence', _appearence.index);
  }

  Future<bool> toggleNightMode() async {
    _nightMode = !_nightMode;
    notifyListeners();
    if (_nightMode)
      SystemChrome.setEnabledSystemUIOverlays([]);
    else
      SystemChrome.setEnabledSystemUIOverlays([
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]);
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setBool('nightMode', _nightMode);
  }
}
