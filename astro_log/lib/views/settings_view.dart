import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  static const routeName = '/settings_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
    );
  }
}
