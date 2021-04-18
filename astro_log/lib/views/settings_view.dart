import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dynamic_theme.dart';

import '../widgets/image_app_bar.dart';
import '../widgets/labeled_divider.dart';

class SettingsView extends StatefulWidget {
  static const routeName = '/settings_view';

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool _isInitialised = false;
  ThemeMode? _selectedAppearance;

  void _toggleAppearance(ThemeMode? value) {
    setState(() {
      _selectedAppearance = value;
    });
    Provider.of<DynamicTheme>(context, listen: false).toggleAppearance(value);
  }

  @override
  void didChangeDependencies() {
    if (!_isInitialised) {
      _selectedAppearance =
          Provider.of<DynamicTheme>(context, listen: false).appearance;
      _isInitialised = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ImageAppBar(
        'assets/images/milkyway.jpg',
        title: 'Settings',
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          LabeledDivider('Appearance'),
          Radio(
            value: ThemeMode.system,
            groupValue: _selectedAppearance,
            onChanged: _toggleAppearance,
          ),
          Radio(
            value: ThemeMode.light,
            groupValue: _selectedAppearance,
            onChanged: _toggleAppearance,
          ),
          Radio(
            value: ThemeMode.dark,
            groupValue: _selectedAppearance,
            onChanged: _toggleAppearance,
          ),
        ],
      ),
    );
  }
}
