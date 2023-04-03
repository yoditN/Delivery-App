
import 'package:flutter/material.dart';

import '../../FoodDataModel.dart';
//import 'package:untitled/FoodDataModel.dart';
  class FoodDetail  extends StatelessWidget {
     final FoodDataModel foodDataModel;
     FoodDetail ({Key? key, required this.foodDataModel}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:
           Column(
             children: [
               Image.asset(foodDataModel.Imageurl),
               Text(foodDataModel.decription)

             ],
           )

      );
    }
  }

