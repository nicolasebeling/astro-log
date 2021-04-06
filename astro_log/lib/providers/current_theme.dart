import 'package:flutter/material.dart';

import '../themes/themes.dart' as themes;

class CurrentTheme with ChangeNotifier {
  ThemeData get theme {
    return themes.theme;
  }

  ThemeData get darkTheme {
    return themes.darkTheme;
  }
}
