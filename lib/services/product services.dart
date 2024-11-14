import 'package:dio/dio.dart';
import 'package:e_commerce/models/product%20model.dart';

class productservices{
  static Dio dio=Dio();
  static Future productdata(String name,String description,String image)async{
    Response response=await dio.get('https://student.valuxapps.com/api/home',data: {

      "name":name,
      "description":description,
      "image":image,
    });
    return productmodel.fromjson(response.data);
  }
}