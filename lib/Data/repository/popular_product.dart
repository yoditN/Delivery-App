import 'package:get/get.dart';
import 'package:untitled/Data/Api/api_client.dart';
//re op talks to the api client that has to do internate connections
// when we fetch data form the interante n we use getxservice
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
   PopularProductRepo({required this.apiClient});

   Future<Response> getPopularProductList()async {
     return await apiClient.getData("");
   }

}