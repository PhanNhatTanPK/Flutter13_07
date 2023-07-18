import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier{

  Future<bool> login(String email, String pass) async{
    if(email.isEmpty || pass.isEmpty) {
      return false;
    }
    return true;
  }

  Future<bool> register(String email, String pass) async{
    if(email.isEmpty || pass.isEmpty) {
      return false;
    }
    return true;
  }
}
