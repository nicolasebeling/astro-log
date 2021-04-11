import 'package:flutter/material.dart';

import '../views/profile_view.dart';
import '../views/settings_view.dart';
import '../views/observation_view.dart';

final routes = {
  ProfileView.routeName: (BuildContext context) => ProfileView(),
  SettingsView.routeName: (BuildContext context) => SettingsView(),
  ObservationView.routeName: (BuildContext context) => ObservationView(),
};
