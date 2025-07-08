import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/constants/image_paths.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/app_icon.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/description_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height20*3.5,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Container(
                  padding: EdgeInsets.only(top: Dimensions.height5, bottom: Dimensions.height10, left: Dimensions.width10,right: Dimensions.width10),
                  width: double.maxFinite,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                    )
                  ),
                  child: Center(child: BigText(text: "Chinese Side", size: Dimensions.font26,)),
                )
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AppImages.food0,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: DescriptionText(text: "Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.Enjoy the rich flavors of our authentic Chinese side dishes, prepared with fresh vegetables, savory sauces, and traditional spices. This dish is perfect for those who crave a light yet flavorful addition to their meal. Whether paired with noodles, rice, or served as a starter, it offers a satisfying balance of taste and texture.", color: AppColors.paracolor, size: Dimensions.font16,),
            ),
          )
        ],
      ),
    );
  }
}
