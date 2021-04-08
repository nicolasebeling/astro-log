import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static const routeName = '/profile_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
    );
  }
}
