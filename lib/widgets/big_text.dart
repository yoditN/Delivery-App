import 'package:flutter/material.dart';

import '../utils/dimensions.dart'; // lets creata a reusabel text widget
 class BigText extends StatelessWidget {
     Color? color ;  // ? is refer optional
     final String text;
     double size;
     TextOverflow overFlow;// making daynamic
   BigText({Key? key, this.color = const  Color(0xFF332d2b),
   required this.text,
   this.size=0,
   this.overFlow=TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
       text,
     maxLines: 1,
     overflow: overFlow,
      style: TextStyle(
        color: color,
       fontWeight: FontWeight.w400,
       fontFamily: 'Roboto',
        fontSize:  size==0?Dimensions.font20:size,

      ),


    );
  }
}
