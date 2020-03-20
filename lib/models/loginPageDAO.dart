import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:sure_count_app/beans/loginData.dart';
import 'package:sure_count_app/utilities/constants.dart';

class LoginPageDAO {
  LoginPageDAO();
  
  Future<LoginData> login(LoginData loginData) async {
    try {
      Map jsonPayload = {
        'username': loginData.username,
        'password': loginData.password
      };

      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.loginServicePath);
      final response = await http.post(serviceURI,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json'
          },
          body: json.encode(jsonPayload)
      );

      if (response.statusCode == 200) {
        loginData.roles = json.decode(response.body)['roles'];
        loginData.authorizationToken = response.headers['grpc-metadata-authorization'];
        return loginData;
      } else {
        throw Exception('Failed to Login');
      }
    } catch(e) {
      return null;
    }
  }
}