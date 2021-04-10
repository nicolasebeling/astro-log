import 'package:flutter/material.dart';

import '../views/profile_view.dart';
import '../views/settings_view.dart';
import '../views/add_observation_view.dart';

final routes = {
  ProfileView.routeName: (BuildContext context) => ProfileView(),
  SettingsView.routeName: (BuildContext context) => SettingsView(),
  AddObservationView.routeName: (BuildContext context) => AddObservationView(),
};
