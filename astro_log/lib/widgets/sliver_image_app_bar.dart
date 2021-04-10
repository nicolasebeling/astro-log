import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/current_theme.dart';

import '../icons/octicons.dart';

import '../views/settings_view.dart';
import '../views/profile_view.dart';
import '../views/add_observation_view.dart';

class SliverImageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight:
          Provider.of<CurrentTheme>(context).nightMode ? kToolbarHeight : 150,
      centerTitle: true,
      stretch: !Provider.of<CurrentTheme>(context).nightMode,
      pinned: true,
      leading: Row(
        children: [
          const SizedBox(width: 10),
          IconButton(
            splashRadius: 20,
            icon: const Icon(Icons.settings_rounded),
            onPressed: () =>
                Navigator.of(context).pushNamed(SettingsView.routeName),
          ),
          IconButton(
            splashRadius: 20,
            icon: const Icon(Icons.person_rounded),
            onPressed: () =>
                Navigator.of(context).pushNamed(ProfileView.routeName),
          )
        ],
      ),
      leadingWidth: 106,
      actions: [
        IconButton(
          splashRadius: 20,
          icon: const Icon(Octicons.telescope),
          onPressed: () =>
              Navigator.of(context).pushNamed(AddObservationView.routeName),
        ),
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => Provider.of<CurrentTheme>(context, listen: false)
              .toggleNightMode(),
        ),
        const SizedBox(width: 10),
      ],
      flexibleSpace: Stack(
        children: <Widget>[
          if (!Provider.of<CurrentTheme>(context).nightMode)
            Positioned.fill(
              child: Image.asset(
                'assets/images/milkyway.jpg',
                alignment: const AlignmentDirectional(0, -0.5),
                fit: BoxFit.cover,
              ),
            ),
          FlexibleSpaceBar(
            title: Text(
              'Good evening!',
              softWrap: false,
              overflow: TextOverflow.visible,
            ),
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
            ],
            centerTitle: true,
          ),
        ],
      ),
    );
  }
}
