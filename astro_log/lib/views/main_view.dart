import 'package:flutter/material.dart';

import '../widgets/image_header.dart';
import '../widgets/dashboard.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ImageHeader(),
          Dashboard(),
        ],
      ),
    );
  }
}
