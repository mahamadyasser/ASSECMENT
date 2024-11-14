import 'package:dio/dio.dart';
import 'package:e_commerce/models/user%20model.dart';

class userservices{
  static Dio dio=Dio();
  static Future signin(String name,String password)async{
    Response response=await dio.post('https://student.valuxapps.com/api/login',data: {
      "name":name,
      "password":password,
    });
    return usermodel.fromjson(response.data);
  }


  static Future signup(String name,String password,String phone,String email)async{
    Response response=await dio.post('https://student.valuxapps.com/api/register',data: {
    "name":name,
    "password":password,
      "email":email,
      "phone":phone,

    });
    return usermodel.fromjson(response.data);
  }

}