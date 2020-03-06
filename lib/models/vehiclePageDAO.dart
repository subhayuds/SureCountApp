import 'dart:convert';

import 'package:sure_count_app/utilities/constants.dart';
import 'package:http/http.dart' as http;

class VehiclePageDAO {
  VehiclePageDAO();

  Future getVehiclesList() async {
    try {
      final response = await http.get(Constants.serviceBaseURL + Constants.vehicleServicePath, headers: {"Accept": "application/json"},);

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