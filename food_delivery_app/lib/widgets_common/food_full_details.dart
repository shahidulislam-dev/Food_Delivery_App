import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/description_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class FoodFullDetails extends StatelessWidget {
  final String title;
  final String description;
  final String textButton;
  const FoodFullDetails({
    super.key,
    required this.title,
    required this.description,
    this.textButton = "Show More"
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: title),
        SizedBox(height: Dimensions.height15,),
        DescriptionText(text: description),
        SizedBox(height: Dimensions.height10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SmallText(text: textButton, color: AppColors.mainColor,),
            SizedBox(width: Dimensions.width5,),
            Icon(Icons.keyboard_arrow_down_sharp, color: AppColors.mainColor,)
          ],
        )
      ],
    );
  }
}
