import 'package:flutter/material.dart';
import 'package:untitled/widgets/small_text.dart';

import '../colors.dart';
import '../utils/dimensions.dart';
import 'Icon_and_text_widget.dart';
import 'big_text.dart';
class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            // to display horizontally again and again
            Wrap(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "4.5"),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "1287"),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "Comment"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
