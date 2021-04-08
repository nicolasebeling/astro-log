import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/current_theme.dart';

import '../icons/octicons.dart';

import '../views/settings_view.dart';
import '../views/profile_view.dart';

class ImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: Provider.of<CurrentTheme>(context).nightMode ? null : 150,
      title: Provider.of<CurrentTheme>(context).nightMode
          ? Text(
              'Good evening!',
              softWrap: false,
              overflow: TextOverflow.fade,
            )
          : null,
      centerTitle: true,
      stretch: true,
      pinned: true,
      leading: Row(
        children: [
          SizedBox(width: 10),
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
      leadingWidth: 112,
      actions: [
        IconButton(
          splashRadius: 20,
          icon: const Icon(Octicons.telescope),
          onPressed: () {},
        ),
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => Provider.of<CurrentTheme>(context, listen: false)
              .toggleNightMode(),
        ),
        SizedBox(width: 10),
      ],
      flexibleSpace: Provider.of<CurrentTheme>(context).nightMode
          ? null
          : FlexibleSpaceBar(
              title: Text(
                'Good evening!',
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              background: Image.asset(
                'assets/images/milkyway.jpg',
                alignment: AlignmentDirectional(
                  0,
                  -0.5,
                ),
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
