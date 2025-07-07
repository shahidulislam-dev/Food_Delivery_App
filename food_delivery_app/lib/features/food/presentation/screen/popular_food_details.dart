import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/constants/image_paths.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/app_icon.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/icon_with_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                height: Dimensions.topBackgroundImg,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(AppImages.food0)
                  )
                ),
              )
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      icon: Icons.arrow_back_ios_new,
                  ),
                  AppIcon(
                      icon: Icons.shopping_cart_outlined,
                  ),
                ],
              )
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.topBackgroundImg - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
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
                      SmallText(text: "4.5"),
                      SizedBox(width: Dimensions.width10),
                      SmallText(text: "1251 Comments"),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

