 import 'package:flutter/material.dart';

import '../../FoodDataModel.dart';
import '../../colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/Icon_and_text_widget.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandabel_text.dart';
import '../../widgets/small_text.dart';
import '../home/main_food_page.dart';
import '../increment_decrement.dart';
class PopularFoodDetail extends StatelessWidget {
  final FoodDataModel foodDataModel;
  const PopularFoodDetail({Key? key, required this.foodDataModel, }) : super(key: key);

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
                  height: 350,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image:  AssetImage(foodDataModel.Imageurl),
                 ),
               ),
               width: double.maxFinite, // to take the avaliable width
            )),
            Positioned(
                 top:  45,
                left: 20, // make dynamic
                right: 20,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  InkWell(
                     onTap:(){
                       Navigator.pop(context, MaterialPageRoute(builder: (context) => const MainFoodPage(),));
                     },
                      child: AppIcon (icon: Icons.arrow_back,)),
                 AppIcon(icon: Icons.shopping_cart_checkout_outlined),
    ],
       ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                 top: 300,
                child: Container(
                   padding: const EdgeInsets.only(left: 20, right: 20,),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                            topRight:Radius.circular(Dimensions.radius20),
                            topLeft:Radius.circular(Dimensions.radius20,)),
                      color: Colors.white,
                    ),
                     child:  Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        const AppColumn( text: "Ethiopan Side"),
                          SizedBox(height: Dimensions.height20,),
                         BigText(text: foodDataModel.name),
                         SizedBox(height: Dimensions.height20,),
                        const Expanded(
                           child: SingleChildScrollView
                             (child: ExpandabelText(text: "Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king, delightful,lovenjoyable, appealing, wonderful,pleasant, Delicious meal are tastly,appetizing,scrumptious, yummy,iuscious,delectable,mouth-watering, fit for a king, delightful,lovenjoyable, appealing, wonderful,pleasant",)),
                         ),

                       ],
                     )



            ))

      ],
    ),
       bottomNavigationBar: Container(

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
                 child: Row(
                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CounterApp(),
                     /*Icon(Icons.remove , color: AppColors.signColor,),
                        SizedBox(height: Dimensions.width10/5,),
                        BigText(text: "0"),
                        SizedBox(height: Dimensions.width10/5,),
                        Icon(Icons.add, color: AppColors.signColor,)*/
                    ],
                 ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20 ,
                    right: Dimensions.width20),
                  child: BigText(text: "100 ETB ", color: Colors.white),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                   color: AppColors.mainColor,
                ),
              )
            ],
          ),
       ),
    );



  }
}

