import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dynamic_theme.dart';

import '../icons/octicons.dart';

import '../views/settings_view.dart';
import '../views/profile_view.dart';
import '../views/observation_view.dart';

class SliverImageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      centerTitle: true,
      // Doesn't work!
      // stretch: Provider.of<DynamicTheme>(context).nightMode ? false : true,
      stretch: true,
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
              Navigator.of(context).pushNamed(ObservationView.routeName),
        ),
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => Provider.of<DynamicTheme>(context, listen: false)
              .toggleNightMode(),
        ),
        const SizedBox(width: 10),
      ],
      flexibleSpace: Stack(
        children: <Widget>[
          if (!Provider.of<DynamicTheme>(context).nightMode)
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
              overflow: TextOverflow.fade,
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
