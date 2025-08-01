import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backGroundColor;
  final Color iconColor;
  final double size;
  const AppIcon({
    super.key,
    required this.icon,
    this.backGroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0xFF756d54),
    this.size = 40
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backGroundColor
      ),
      child: Icon(icon, color: iconColor, size: Dimensions.iconSize16,),
    );
  }
}
