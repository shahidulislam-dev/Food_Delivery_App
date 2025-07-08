import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';
import 'package:food_delivery_app/widgets_common/icon_with_text.dart';

class FoodShortDetail extends StatelessWidget {
  final String title;
  final double rating;
  final int commentsCount;

  const FoodShortDetail({
    super.key,
    required this.title,
    required this.rating,
    required this.commentsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: title,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: rating.toString()),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "$commentsCount Comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWithText(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconcolor1,
            ),
            IconWithText(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconWithText(
              icon: Icons.watch_later_outlined,
              text: "32min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
