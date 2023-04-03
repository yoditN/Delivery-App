//  we create a method
 import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Data/Api/api_client.dart';
import 'package:untitled/Data/repository/popular_product.dart';
import 'package:untitled/controllers/popular_products_controller.dart';

Future<void> init()async{
 //puting the dependence
Get.lazyPut(()=>ApiClient(appBaseUrl: "http://www.dbestech.com"));

     Get.lazyPut(() => PopularProductRepo(apiClient: Get.find() ));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
 }
