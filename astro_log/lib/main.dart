import 'package:flutter/material.dart';

void main() {
  runApp(AstroLog());
}

class AstroLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astro Log',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
