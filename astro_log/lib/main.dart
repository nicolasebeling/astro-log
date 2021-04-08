import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/current_theme.dart';

import 'config/routing_table.dart';

import 'views/main_view.dart';

void main() => runApp(AstroLog());

class AstroLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentTheme(),
      builder: (context, child) {
        return MaterialApp(
          title: 'Astro Log',
          debugShowCheckedModeBanner: false,
          theme: Provider.of<CurrentTheme>(context).theme,
          darkTheme: Provider.of<CurrentTheme>(context).darkTheme,
          home: MainView(),
          routes: routes,
        );
      },
    );
  }
}
