import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dynamic_theme.dart';

class ImageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String image;
  final String? title;
  final List<Widget>? actions;

  const ImageAppBar(
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
      title: Text(
        title ?? '',
        softWrap: false,
        overflow: TextOverflow.fade,
      ),
      centerTitle: true,
      flexibleSpace: Provider.of<DynamicTheme>(context).nightMode
          ? null
          : Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    image,
                    alignment: const AlignmentDirectional(0, -0.5),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        splashRadius: 20,
      ),
      actions: [
        ...actions ?? [],
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => Provider.of<DynamicTheme>(context, listen: false)
              .toggleNightMode(),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
