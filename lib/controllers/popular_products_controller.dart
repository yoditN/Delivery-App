 import 'package:get/get.dart';

import '../Data/repository/popular_product.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController ({required this.popularProductRepo});

  List<dynamic> _popularProductList=[];
   //get the data from the repo and store it in the list
  List<dynamic> get popualProductList => _popularProductList;
  Future<void> getPopularProductList() async{
      Response response =   await  popularProductRepo.getPopularProductList();
       if(response.statusCode==200){
         _popularProductList=[];
      //   _popularProductList.addAll();
         update(); 
       } else{

       }


  }
 }

