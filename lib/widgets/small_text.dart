import 'package:flutter/material.dart'; // lets creata a reusabel text widget
class SmallText extends StatelessWidget {
  Color? color ;  // ? is refer optional
  final String text;
  double size;
   double height;
  // making daynamic
  SmallText({Key? key, this.color = const  Color(0xFFE1BEE7),
    required this.text,
    this.size=12,
    this.height= 1.2,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,

      ),


    );
  }
}