

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/colors.dart';
import 'package:untitled/utils/dimensions.dart';
import 'package:untitled/widgets/app_icon.dart';
import 'package:untitled/widgets/big_text.dart';
import 'package:untitled/widgets/expandabel_text.dart';

import '../../FoodDataModel.dart';
import '../../FoodDataModel.dart';
import '../../controllers/cartController.dart';

import '../home/food_page_body.dart';
import '../home/main_food_page.dart';
import '../increment_decrement.dart';

class RecommenededFoodDetail extends StatelessWidget {
  final FoodDataModel foodDataModel;
  const RecommenededFoodDetail({Key? key,  required this.foodDataModel}) : super(key: key);
  @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       body: CustomScrollView(
         slivers: [
            SliverAppBar(
              toolbarHeight: 70,
               title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap:(){
                         Navigator.pop(context, MaterialPageRoute(builder: (context) => const MainFoodPage(),));
                        },
                      //  child: AppIcon (icon: Icons.arrow_back,)
                    ),
                   AppIcon(icon: Icons.shopping_cart_checkout_outlined),

                  ],
               ),
               bottom:PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(

                    child: Center(child: BigText( size:Dimensions.font26,text: "Foods")),
                    width: double.maxFinite,
                    padding:const EdgeInsets.only(top:5,bottom:  10,),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only( topLeft: Radius.circular(Dimensions.radius20, ),
                           topRight: Radius.circular(Dimensions.radius20)),
                           color:Colors.white,
                     ),

                  )
               ),

               pinned:  true,
               backgroundColor: AppColors.mainColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(foodDataModel.Imageurl
                  ,
                   width: double.maxFinite,
                  fit: BoxFit.cover,
                  ),

              ),

            ),
           SliverToBoxAdapter(
               child: Column(
                  children: [
                     Container(
                       child:
                         ExpandabelText(
                           text: "  A Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly,v Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly,v Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king,Delicious meal are tastly,",),
                       margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                     )
                  ],
               ),
            ) 
         ],
       ),
        bottomNavigationBar: Column(
           mainAxisSize: MainAxisSize.min,

           children: [
             Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20*2.5,
                  right: Dimensions.width20*2.5,
                   top: Dimensions.height10,
                   bottom: Dimensions.height10,
                ),
              //
                child: CounterApp() ,
            ),
     Container(

       height: Dimensions.bottomHeightBar,
       padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20,right: Dimensions.width20),
       decoration: BoxDecoration(
           color: AppColors.buttonBackgroundColor,
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(Dimensions.radius20*2),
             topRight:  Radius.circular(Dimensions.radius20*2),
           )
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Container(
             padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20 ,right: Dimensions.width20),

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(Dimensions.radius20),
               color: Colors.white,
             ),
             child:GestureDetector(
               onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(" Add to favorite", ),));
               },
               child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
               ),
             ),
           ),
           Container(
             padding:  EdgeInsets.only(
                 top: Dimensions.height20,
                 bottom: Dimensions.height20,
                 left: Dimensions.width20 ,
                 right: Dimensions.width20),
                child:
                    GestureDetector(
                      onTap: (){ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text(" Add to Cart"))
                        );
                    },
                     child: BigText(
                 text:  " 100 ETB | Add to cart",
                 color: Colors.white),
                   ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(Dimensions.radius20),
               color: AppColors.mainColor,
             ),
           ),
           ],
        ),

     ),
     ]
     )
     );
   }
 }
