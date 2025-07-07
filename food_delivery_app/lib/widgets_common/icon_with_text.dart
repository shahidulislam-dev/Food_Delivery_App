import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double iconSize;

  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.iconSize = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: iconSize == 0 ? Dimensions.iconSize24 : iconSize,),
        SizedBox(width: 5,),
        SmallText(text: text)
      ],
    );
  }
}
