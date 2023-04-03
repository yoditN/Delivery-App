import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';
import 'package:untitled/widgets/small_text.dart';

import '../../FoodDataModel.dart';
import '../../utils/dimensions.dart';
import '../../widgets/App_images.dart';
import '../../widgets/Icon_and_text_widget.dart';
import '../../widgets/app_column.dart';
import '../../widgets/big_text.dart';
import '../food/food_detail.dart';
import '../food/popula_food_details.dart';
import '../food/recommented_food_details.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  // FoodDataModel food=new FoodDataModel('Fried-rice', 'assets/images/fried-rice.jpg', '');

  static List<String> foodname = [  'Fried-rice', 'grilled-cheese','moist-chocolate-cupcakes-5','Rice','cupcake''klk','pizza','fish',];
  static List<String>  restaurants =['a','e','f'];
  static List url = [
    'assets/images/fried-rice.jpg',
    'assets/images/grilled-cheese.jpg',
    'assets/images/moist-chocolate-cupcakes-5.jpg',
    'assets/images/Rice.jpg',
    'assets/images/cupcake.jpg',
    'assets/images/c.jpg',
    'assets/images/d.jpg',
    'assets/images/e.jpg',
    'assets/images/f.jpg',
    'assets/images/g.jpg',

  ];

  final List<FoodDataModel> Fruitdata = List.generate(
      foodname.length,
      (index) => FoodDataModel(
          '${foodname[index]}', '${url[index]}', '${foodname[index]}''Description...'));

  // page view build have a related controller

  PageController pageController = PageController(viewportFraction: 0.7);
  var _currentPageValue = 0.0; // the visibility of the previous and next slide
  double _scaleFactor = 0.8;
  //double _height  =220;
  double _height = Dimensions.pageViewContainer;




  

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        //print("current value is "+_currentPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        GestureDetector(

          child: Container(
            height: Dimensions.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount:  Fruitdata.length,
                itemBuilder: (context, index) // starting form 0 up to a given index
                    {
                  return _buildPageItem(index); // to scroll left and right
                }),
          ),
        ),
        // dots section
        DotsIndicator(
            dotsCount:   Fruitdata.length,
            position: _currentPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            )),
        //popular text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
            margin: EdgeInsets.only(
              left: Dimensions.width30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BigText(text: "Popular"),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  child: BigText(
                    text: ".",
                    color: Colors.black26,
                  ),
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(text: "Food"),
                )
              ],
            )),
        //list of view food and images
          Container(
               height: 900,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true, // to remove the overflow, we can also use singelchildscrool view
                    itemCount:   5,//Fruitdata.length,
                    itemBuilder: (context, index){

                      return GestureDetector(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommenededFoodDetail(foodDataModel: Fruitdata[index],

                          )));
                        },
                        child: Container(
                          margin: EdgeInsets.only( bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20

                          ),
                          child: Row(
                            children: [
                               // list of image section
                              Container(
                                width:120,
                                height:120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                                    color: Colors.white38,
                                    image: DecorationImage(
                                       fit:BoxFit.cover,
                                        image: AssetImage(
                                            Fruitdata[index].Imageurl


                                        ),
                                    )
                                ),
                              ),
                               // text part
                              Expanded(
                                child: Container(
                                   height: 100,
                                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(Dimensions.radius20),
                                   bottomRight:Radius.circular(Dimensions.radius20),
                                ),
                                  color: Colors.white38,
                                  ),
                                   child: Padding(padding: EdgeInsets.only(left:10),
                                      child: AppColumn(text:Fruitdata[index].name),

                                   ),
                        ),

                              ),
                            ],
                          ),
                        ),
                      );
                    }),
             ),

      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var CurrTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var CurrTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecommenededFoodDetail(foodDataModel: Fruitdata[index],)));

        },
        child: Stack(children: [
          Container(
            // height: MediaQuery.of(context).size.height*0.2,
            height: Dimensions.pageViewContainer,
            margin: const EdgeInsets.only(
                left: 10, right: 10), // to create an empty space
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFFffd28d),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                     Fruitdata[index].Imageurl
                    )
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120, //Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x0ffe8e8e),
                      // blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15, left: 15, right: 15),
                child: const AppColumn(
                  text:  "Restaurants",
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
