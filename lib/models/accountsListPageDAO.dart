import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sure_count_app/utilities/constants.dart';

class AccountListPageDAO {
  AccountListPageDAO();
  
  Future getAccountsList() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.accountListServicePath);
      final response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return json.encode({'organizations': []});
    }
  }

  Future getAccountDetails(num accountId) async {
    try {
      Map<String, String> queryParameters = {
        'organization.organizationId': accountId.toString()
      };

      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.accountDetailsServicePath, queryParameters);
      http.Response response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load accounts');
      }
    } catch(e) {
      return json.encode({'accounts': []});
    }
  }
}