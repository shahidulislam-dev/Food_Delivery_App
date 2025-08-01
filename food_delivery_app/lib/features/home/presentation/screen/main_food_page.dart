import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_page_body.dart';
import 'package:food_delivery_app/widgets_common/big_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height20),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Bangladesh", color: AppColors.mainColor,),
                    Row(
                      children: [
                        SmallText(text: "Barishal", color: Colors.black54,),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    height: Dimensions.height45,
                    width: Dimensions.width45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
              child: FoodPageBody())
          )
        ],
      ),
    );
  }
}
