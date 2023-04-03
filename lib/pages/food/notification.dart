import 'package:flutter/material.dart';
import 'package:untitled/widgets/small_text.dart';

import '../../colors.dart';
import '../../widgets/big_text.dart';
class NotificationBar extends StatelessWidget {
  const NotificationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
         children: [
            Container(
              padding: EdgeInsets.only(top:10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                 color: Colors.white70,
              ),
               child: Row(
                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                           onTap:(){
                             Navigator.pop(context);
                           },
                            child: Icon(Icons.arrow_back, color: AppColors.mainColor,))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: BigText(text: " Notification", color: Colors.black,)),
                  ],
               ),
            ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                 width: double.infinity,
                 height: 85,
                 decoration: BoxDecoration(
                   color: Colors.white70,
                 //  borderRadius: BorderRadius.circular(30),
                   boxShadow: [
                     BoxShadow(
                       spreadRadius: 2,
                       color: Colors.grey.withOpacity(0.5),
                       blurRadius: 3,
                       offset: Offset(0,3),
                     )
                   ]
                 ),
                   child: Container(
                      padding: EdgeInsets.symmetric(

                      ),
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                           BigText(text: "23 Mar 2023"),
                      SizedBox(height: 10,),
                      Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[// Icon(Icons.notification_add, color: AppColors.iconColor2,),
                           //  SizedBox(height: 20,),
                            BigText(text: "Like giving orders?"),
                          ],
                      ),
                         //  SmallText(text:"we'll take them! order something of our app and enjoy!", color: Colors.black,),
                        ],

                     ),
                   ),
              ),
           
         ],

    ),);
  }
}
