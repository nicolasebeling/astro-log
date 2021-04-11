import 'package:flutter/material.dart';

class ImageBottomNavigationBarItem extends StatelessWidget {
  final IconData? iconData;
  final bool? isSelected;
  final void Function()? onPressed;

  ImageBottomNavigationBarItem({
    @required this.iconData,
    this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(
          color: isSelected ?? false
              ? Theme.of(context).iconTheme.color ?? Colors.transparent
              : Colors.transparent,
          width: 2,
        ),
      ),
      height: 48,
      width: 48,
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(iconData),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
