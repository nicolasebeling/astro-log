import 'package:flutter/material.dart';

import '../icons/octicons.dart';
import '../icons/meteocons.dart';

import '../widgets/image_app_bar.dart';
import '../widgets/image_bottom_navigation_bar.dart';

class ObservationView extends StatefulWidget {
  static const routeName = '/new_observation_view';

  @override
  _ObservationViewState createState() => _ObservationViewState();
}

class _ObservationViewState extends State<ObservationView> {
  int _pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void _selectPage(int pageIndex) {
    setState(() {
      _pageIndex = pageIndex;
    });
    _pageController.jumpToPage(
      _pageIndex,
    );
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'iconData': Octicons.location,
      'page': const Center(
        child: const Text('time & place'),
      ),
    },
    {
      'iconData': Octicons.telescope,
      'page': const Center(
        child: const Text('observed objects'),
      ),
    },
    {
      'iconData': Meteocons.cloud_moon_inv,
      'page': const Center(
        child: const Text('weather conditions'),
      ),
    },
    {
      'iconData': Octicons.light_bulb,
      'page': const Center(
        child: const Text('light pollution'),
      ),
    },
    {
      'iconData': Octicons.device_camera,
      'page': const Center(
        child: const Text('images'),
      ),
    },
    {
      'iconData': Octicons.note,
      'page': const Center(
        child: const Text('notes'),
      ),
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _systemBottomPadding = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: ImageAppBar(
        'assets/images/milkyway.jpg',
        title: 'Observation',
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save_rounded),
            splashRadius: 20,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (pageIndex) {
                setState(() {
                  _pageIndex = pageIndex;
                });
              },
              children: _pages.map((page) => page['page'] as Widget).toList(),
            ),
          ),
          ImageBottomNavigationBar(
            image: 'assets/images/milkyway.jpg',
            systemBottomPadding: _systemBottomPadding,
            pageIndex: _pageIndex,
            selectPage: _selectPage,
            iconData:
                _pages.map((page) => page['iconData'] as IconData).toList(),
          ),
        ],
      ),
    );
  }
}
