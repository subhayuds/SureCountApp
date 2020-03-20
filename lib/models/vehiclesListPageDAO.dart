import 'dart:convert';

import 'package:sure_count_app/utilities/constants.dart';
import 'package:http/http.dart' as http;

class VehiclesListPageDAO {
  VehiclesListPageDAO();

  Future getVehiclesList() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.vehicleListServicePath);
      final response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return json.encode({'vehicles': []});
    }
  }

  Future getVehicleDetails(num vehicleId) async {
    try {
      Map<String, String> queryParameters = {
        'vehicle.vehicleId': vehicleId.toString()
      };

      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.vehicleDetailsServicePath, queryParameters);
      http.Response response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return json.encode({'vehicles': []});
    }
  }
}