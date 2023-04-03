import 'package:flutter/material.dart';

import '../../FoodDataModel.dart';
import '../../colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../food/notification.dart';
import 'food_page_body.dart';
  class MainFoodPage extends StatefulWidget {
    const MainFoodPage({Key? key}) : super(key: key);

    @override
    State<MainFoodPage> createState() => _MainFoodPageState();
  }

  class _MainFoodPageState extends State<MainFoodPage> {
    static List<String> Foodname =['pizza, burger','fish','omllet','noddles'];
     //static List<String>  restaurants =['a','e','f'];
    static List url=[  'assets/images/a.jpg',
      'assets/images/b.jpg',
      'assets/images/c.jpg',
      'assets/images/d.jpg',
      'assets/images/e.jpg',
      'assets/images/f.jpg',
      'assets/images/g.jpg',
      'assets/images/h.jpg',
      'assets/images/i.jpg',
      'assets/images/j.jpg',
      'assets/images/k.jpg',
    ];
    final List<FoodDataModel> FoodData = List.generate(

        Foodname.length, (index) => FoodDataModel('${Foodname[index]}','${url[index]}','${Foodname[index]}' 'Description'));

    @override
    Widget build(BuildContext context) {
      //print("current height is "+MediaQuery.of(context).size.height.toString());
      return Scaffold(
        body: Column(
          children: [
            // show the header part
           Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom:Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Column(
                      children: [
                        BigText(text: "Ethiopia", color:AppColors.mainColor, size:30),
                        Row(
                          children: [
                            SmallText( text:"Addis Ababa", color: Colors.black54,),
                            InkWell(
                               onTap:(){
                               //  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationBar(),));
                               },
                                child: const Icon(Icons.arrow_drop_down_circle_rounded)),
                          ],
                        )

                      ],
                    ),
                  ),
                  Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                      child:
                      InkWell(
                           onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationBar(),));
                           },
                          child: Icon(Icons.notification_add,color: Colors.white, size: Dimensions.iconsize24,)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,

                    ),

                  )
                ],
              )
              ,
            ),

          ),
             // seaeching bar
              const SizedBox(height: 10,),
             Container(
               margin: const EdgeInsets.only( left: 10 , right: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                       blurRadius: 2,
                      offset: const Offset(0,3),
                      color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2
                    ),],),

                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Icon(Icons.search, color: AppColors.mainColor,),
                           Container(
                             width: 50,
                             height: 30,
                             child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                    hintText: "what would you like to have?",
                                    
                                 ) ,
                              ),),
                              
                           ),

                          Icon(Icons.filter_list, color: AppColors.mainColor,)
                        ],

                      ),
                    )
      
             ),
              const SizedBox(height: 15,),
            //showing the body
            const Expanded(child: SingleChildScrollView(
                child:   FoodPageBody()
            )
          ),
          ]

        ),

      );
    }
  }
