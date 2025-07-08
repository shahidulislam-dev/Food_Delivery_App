import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';

class DescriptionText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  const DescriptionText({
    super.key,
    this.color = const Color(0xFFb3ada7),
    required this.text,
    this.size = 0,
    this.height = 1.2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size == 0 ? Dimensions.font14 : size,
        height: height
      ),
    );
  }
}