import 'package:flutter/material.dart';

class LoginPageController {
  LoginPageController();

  void onLoginButtonPress(context) {
    Navigator.pushNamed(context, '/dashboard');
  }
}