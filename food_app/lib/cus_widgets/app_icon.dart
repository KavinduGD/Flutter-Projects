import 'package:flutter/material.dart';
import 'package:food_app/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color backgroundColor;
  final Color iconColor;

  const AppIcon({
    required this.iconData,
    this.size = 40,
    this.iconColor = const Color(0xFF756d54),
    this.backgroundColor = const Color(0xFFfcf3e3),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundColor,
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
