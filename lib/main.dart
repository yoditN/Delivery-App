import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/food/popula_food_details.dart';
import 'package:untitled/pages/food/recommented_food_details.dart';
import 'package:untitled/pages/home/food_page_body.dart';
import 'package:untitled/pages/home/main_food_page.dart';

import 'package:get/get.dart';
import 'helper/dependencie.dart';

   void main() => runApp(const MyApp());

   class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: //RecommenededFoodDetail(foodDataModel: Fruitdata[index],),
       // const MainFoodPage(),
     ////PopularFoodDetail(),
       MainFoodPage(),

    );
  }
}



