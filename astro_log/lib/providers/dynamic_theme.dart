import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../themes/themes.dart' as themes;

class DynamicTheme with ChangeNotifier {
  bool _nightMode = false;
  ThemeMode _appearance = ThemeMode.system;

  bool get nightMode {
    return _nightMode;
  }

  ThemeData get theme {
    return _nightMode ? themes.nightTheme : themes.theme;
  }

  ThemeData get darkTheme {
    return _nightMode ? themes.nightTheme : themes.darkTheme;
  }

  ThemeMode get appearance {
    return _appearance;
  }

  Future<void> fetchThemeData() async {
    final preferences = await SharedPreferences.getInstance();
    if (preferences.containsKey('nightMode'))
      _nightMode = preferences.getBool('nightMode') ?? false;
    if (preferences.containsKey('appearance'))
      _appearance = ThemeMode.values[preferences.getInt('appearance') ?? 0];
  }

  Future<bool> toggleAppearance(ThemeMode? appearance) async {
    _appearance = appearance ?? _appearance;
    notifyListeners();
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setInt('appearance', _appearance.index);
  }

  Future<bool> toggleNightMode() async {
    _nightMode = !_nightMode;
    notifyListeners();
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setBool('nightMode', _nightMode);
  }
}
