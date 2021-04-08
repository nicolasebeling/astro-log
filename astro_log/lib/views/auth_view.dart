import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/milkyway.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ],
    );
  }
}
