import 'package:sure_count_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardPageDAO {
  DashboardPageDAO();

  Future<int> getAccountsCount() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.accountListServicePath);
      final response = await  http.get(serviceURI, headers: {"Accept": "application/json"},);
      if (response.statusCode == 200) {
        var accountData = (json.decode(response.body))["organizations"] as List;
        return accountData.length;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return 0;
    }
  }

  Future<int> getVehiclesCount() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.vehicleListServicePath);
      final response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        var vehicleData = (json.decode(response.body))["vehicles"] as List;
        
        return vehicleData.length;
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch(e) {
      return 0;
    }
  }

  Future<int> getDevicesCount() async {
    try {
      Uri serviceURI = Uri.http(Constants.serviceBaseURL, Constants.deviceListServicePath);
      final response = await http.get(serviceURI, headers: {"Accept": "application/json"},);

      if (response.statusCode == 200) {
        var deviceData = (json.decode(response.body))["devices"] as List;
        
        return deviceData.length;
      } else {
        throw Exception('Failed to load devices');
      }
    } catch(e) {
      return 0;
    }
  }
}