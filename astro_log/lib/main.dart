import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/dynamic_theme.dart';

import 'config/routing_table.dart';

import 'views/main_view.dart';
import 'views/splash_screen.dart';

void main() => runApp(AstroLog());

class AstroLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DynamicTheme(),
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        return FutureBuilder(
          future: Provider.of<DynamicTheme>(context, listen: false)
              .fetchThemeData(),
          builder: (
            BuildContext context,
            AsyncSnapshot<void> snapshot,
          ) {
            return MaterialApp(
              title: 'Astro Log',
              debugShowCheckedModeBanner: false,
              themeMode: Provider.of<DynamicTheme>(context).appearance,
              theme: Provider.of<DynamicTheme>(context).theme,
              darkTheme: Provider.of<DynamicTheme>(context).darkTheme,
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
