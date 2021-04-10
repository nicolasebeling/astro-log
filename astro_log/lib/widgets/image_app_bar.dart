import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/current_theme.dart';

class ImageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String image;
  final String? title;
  final List<Widget>? actions;

  ImageAppBar(
    this.image, {
    this.title,
    this.actions,
  });

  @override
  Size get preferredSize {
    return Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      centerTitle: true,
      flexibleSpace: Provider.of<CurrentTheme>(context).nightMode
          ? null
          : Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    image,
                    alignment: AlignmentDirectional(0, -0.5),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
      actions: [
        ...actions ?? [],
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => Provider.of<CurrentTheme>(context, listen: false)
              .toggleNightMode(),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
