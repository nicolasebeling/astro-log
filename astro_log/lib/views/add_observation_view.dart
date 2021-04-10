import 'package:flutter/material.dart';

import '../widgets/image_app_bar.dart';

import '../icons/meteocons.dart';
import '../icons/octicons.dart';

class AddObservationView extends StatefulWidget {
  static const routeName = '/new_observation_view';

  @override
  _AddObservationViewState createState() => _AddObservationViewState();
}

class _AddObservationViewState extends State<AddObservationView> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ImageAppBar(
        'assets/images/milkyway.jpg',
        title: 'New observation',
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[900],
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Octicons.clock),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Octicons.location),
            label: 'Place',
          ),
          BottomNavigationBarItem(
            icon: Icon(Octicons.north_star),
            label: 'Objects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Meteocons.cloud_moon_inv),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Octicons.light_bulb),
            label: 'Light',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Images',
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            child: ListView.builder(
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Container(
                  width: 100,
                  height: 100,
                  child: const Center(
                    child: const Text('Test'),
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
