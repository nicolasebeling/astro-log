import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/milkyway.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
