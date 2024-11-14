
import 'package:e_commerce/services/user%20services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class userprovider extends ChangeNotifier{
  Future<bool>  userprovider(String name,String pass)async{
  try
      {
        await userservices.signin(name, password)
        notifyListeners();

      }
      catch(e)
    {
      throw Exception("error:$e");
    }
    return true;
  }

}