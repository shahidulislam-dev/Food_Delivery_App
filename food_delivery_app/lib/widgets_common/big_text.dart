import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow textOverflow;

  const BigText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
