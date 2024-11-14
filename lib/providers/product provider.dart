
import 'package:e_commerce/services/product%20services.dart';
import 'package:flutter/cupertino.dart';

class productprovider extends ChangeNotifier{
  bool status;
  productprovider({
    required this.status
  });

  Future<bool>product(Map<String,dynamic>data)async{

    try
    {
      await  productservices.productdata();
      notifyListeners();
    //  if(product.hashCode.isEven){

      }

    }

    catch(e)
    {
      throw Exception("error:$e");
    }
    return true;
  }

}