import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/food/presentation/screen/popular_food_details.dart';
import 'package:food_delivery_app/features/home/presentation/screen/main_food_page.dart';
import 'package:food_delivery_app/features/recomended/food/presentation/screen/recommended_food_details.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RecommendedFoodDetails(),
    );
  }
}

