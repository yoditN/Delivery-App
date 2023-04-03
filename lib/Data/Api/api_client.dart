import 'package:get/get.dart';
// apiclient is used to talk the server
class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  // map is for storing data locally and converting data and have key and value
   late Map<String, String> _mainHeaders;
  ApiClient({
    required this.appBaseUrl

}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token', // used for aut...
    };
  }
    Future<Response> getData(String uri,) async {
      try {
        Response response = await get(uri); // when get a data put it in to response
        return response;
      } catch (e) {
        return Response(statusCode: 1, statusText: e.toString());
      }
    }
  }
