import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/constants/image_paths.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/app_icon.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/expandable_text_widget.dart';
import 'package:food_delivery_app/widgets_common/food_full_details.dart';
import 'package:food_delivery_app/widgets_common/food_short_detail.dart';
import 'package:food_delivery_app/widgets_common/icon_with_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  FoodShortDetail(
                    title: "Chinese Side",
                    rating: 4.5,
                    commentsCount: 1251,
                  ),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height10,),
                  Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.")))

                ],
              ),

            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(Dimensions.height30),
        height: Dimensions.bottomNavigation120,
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical:Dimensions.height15, horizontal: Dimensions.width20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20)
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width5,),
                  BigText(text: "0", color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width5,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical:Dimensions.height15, horizontal: Dimensions.width20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius20)
              ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}

