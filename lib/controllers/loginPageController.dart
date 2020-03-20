import 'package:flutter/material.dart';
import 'package:sure_count_app/models/loginPageDAO.dart';
import 'package:sure_count_app/utilities/utility.dart';

class LoginPageController {
  LoginPageController();

  Future<void> onLoginButtonPress(context, loginData) async {
    LoginPageDAO().login(loginData).then((responseLoginData) {
      if(responseLoginData != null) 
        Navigator.pushNamed(context, '/dashboard');
      else 
        Utility().showGenericAlert(context, 'Login failed. Please try again later.');
    });
  }
}