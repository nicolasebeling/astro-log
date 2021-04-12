import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/current_theme.dart';

import 'config/routing_table.dart';

import 'views/main_view.dart';
import 'views/splash_screen.dart';

void main() => runApp(AstroLog());

class AstroLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CurrentTheme(),
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        return FutureBuilder(
          future: Provider.of<CurrentTheme>(context, listen: false)
              .fetchThemeData(),
          builder: (
            BuildContext context,
            AsyncSnapshot<void> snapshot,
          ) {
            return MaterialApp(
              title: 'Astro Log',
              debugShowCheckedModeBanner: false,
              themeMode: Provider.of<CurrentTheme>(context).appearence,
              theme: Provider.of<CurrentTheme>(context).theme,
              darkTheme: Provider.of<CurrentTheme>(context).darkTheme,
              home: snapshot.connectionState == ConnectionState.done
                  ? MainView()
                  : SplashScreen(),
              routes: routes,
            );
          },
        );
      },
    );
  }
}
