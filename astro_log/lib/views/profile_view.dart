import 'package:flutter/material.dart';

import '../widgets/image_app_bar.dart';

class ProfileView extends StatelessWidget {
  static const routeName = '/profile_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ImageAppBar(
        'assets/images/milkyway.jpg',
        title: 'Profile',
      ),
    );
  }
}
