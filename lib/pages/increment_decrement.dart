 import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_icon.dart';

import '../colors.dart';
import '../utils/dimensions.dart';
import '../widgets/big_text.dart';
 class CounterApp extends StatefulWidget {
   const CounterApp({Key? key}) : super(key: key);

   @override
   State<CounterApp> createState() => _CounterAppState();
 }

 class _CounterAppState extends State<CounterApp> {
   int count =0;
   void _incrementcount(){
       setState(() {
         count++;
       });


   }
    void _decrementcount(){
    if(count <= 0){
      count =0;
       setState(() {
         count--;
       });
    }else{
      count--;
    }

   }
   @override
   Widget build(BuildContext context) {
     return Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:<Widget>[
     InkWell(
     onTap: _incrementcount,
         child: AppIcon(icon:Icons.add,backgroundColor: AppColors.mainColor,
           iconColor: Colors.white,)
      ),
     SizedBox(width: 5,),
     BigText(text:"${count} ", color: AppColors.mainBlackColor, size: Dimensions.font26,),
           SizedBox(width: 5,),
     InkWell(
     onTap: _decrementcount,
     child: AppIcon(
     iconSize:  Dimensions.iconsize24,
     icon: Icons.remove, backgroundColor: AppColors.mainColor, iconColor: Colors.white,),
     ),





     ]
     );
   }
 }
