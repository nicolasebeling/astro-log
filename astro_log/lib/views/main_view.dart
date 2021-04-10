import 'package:flutter/material.dart';

import '../widgets/sliver_image_app_bar.dart';
import '../widgets/dashboard.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverImageAppBar(),
          Dashboard(),
        ],
      ),
    );
  }
}
