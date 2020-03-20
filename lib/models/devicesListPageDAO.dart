import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sure_count_app/utilities/constants.dart';

class DevicesListPageDAO {
  DevicesListPageDAO();
  
  Future getDeviceList() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.deviceListServicePath);
      final response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return json.encode({'devices': []});
    }
  }

  Future getDeviceDetails(num deviceId) async {
    try {
      Map<String, String> queryParameters = {
        'device.deviceId': deviceId.toString()
      };

      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.deviceDetailsServicePath, queryParameters);
      http.Response response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load device');
      }
    } catch(e) {
      return json.encode({'devices': []});
    }
  }
}