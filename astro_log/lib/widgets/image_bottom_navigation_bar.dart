import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/current_theme.dart';

import 'image_bottom_navigation_bar_item.dart';

class ImageBottomNavigationBar extends StatelessWidget {
  final String? image;
  final double? systemBottomPadding;
  final int? pageIndex;
  final void Function(int pageIndex)? selectPage;
  final List<IconData>? iconData;

  ImageBottomNavigationBar({
    @required this.image,
    @required this.systemBottomPadding,
    @required this.pageIndex,
    @required this.selectPage,
    @required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    List<ImageBottomNavigationBarItem> _items = [];
    for (int index = 0; index < iconData!.length; index++) {
      _items.add(
        ImageBottomNavigationBarItem(
          iconData: iconData![index],
          isSelected: pageIndex == index,
          onPressed: () => selectPage!(index),
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[6],
        color: Theme.of(context).bottomAppBarColor,
      ),
      child: Stack(
        children: [
          if (!Provider.of<CurrentTheme>(context).nightMode)
            Positioned.fill(
              child: Image.asset(
                'assets/images/milkyway.jpg',
                alignment: const AlignmentDirectional(0, -0.5),
                fit: BoxFit.cover,
              ),
            ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: systemBottomPadding == 0 ? 10 : 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _items,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
