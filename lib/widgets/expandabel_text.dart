import 'package:flutter/material.dart';
import 'package:untitled/utils/dimensions.dart';
import 'package:untitled/widgets/small_text.dart';

import '../colors.dart';
  class ExpandabelText extends StatefulWidget {
    final String text;
    const ExpandabelText({Key? key,
      required this.text
    }) : super(key: key);

    @override
    State<ExpandabelText> createState() => _ExpandabelTextState();


  }

  class _ExpandabelTextState extends State<ExpandabelText> {
    late String firstHalf; // we use late for initialized for later
    late String secondHalf;
      bool  hiddenText = true;
      double  textHeght = Dimensions.screenHeight/5.63;
       @override
        void initState() {
         super.initState();
          if(widget.text.length> textHeght){
             // if hte text is longer than a given height... splite in to sections first and second half
            // we use substring to take a text and cut  some part
            // lets initialized the first and second half...
            firstHalf =widget.text.substring(0, textHeght.toInt());
            secondHalf = widget.text.substring(textHeght.toInt()+1, widget.text.length);
          } else{
            firstHalf= widget.text;
            secondHalf= "";
          }
       }
    @override
    Widget build(BuildContext context) {
      return Container(
          child: secondHalf.isEmpty?SmallText(height: 1.8,size: Dimensions.font16, text: firstHalf,color:AppColors.paraColor):Column(
             children: [
               SmallText( height: 1.8, color:AppColors.paraColor, size: Dimensions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
               InkWell(
                 onTap: (){

                    setState(() {
                       hiddenText = !hiddenText; // hidden Text is true once we clicked the button its become false

                    });
                 },
                 child: Row(
                   children: [
                     SmallText(text: "Show More" ,color: AppColors.mainColor,),
                     Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color:AppColors.mainColor),


                   ],
                 ),
               )
             ],
          )

      );
    }
  }
