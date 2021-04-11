import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/themes.dart' as themes;

class CurrentTheme with ChangeNotifier {
  bool _nightMode = false;

  bool get nightMode {
    return _nightMode;
  }

  ThemeData get theme {
    return _nightMode ? themes.nightTheme : themes.theme;
  }

  ThemeData get darkTheme {
    return _nightMode ? themes.nightTheme : themes.darkTheme;
  }

  void toggleNightMode() {
    if (_nightMode) {
      SystemChrome.setEnabledSystemUIOverlays([
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]);
    } else {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }
    _nightMode = !_nightMode;
    notifyListeners();
  }
}
