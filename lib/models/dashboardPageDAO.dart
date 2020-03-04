import 'package:sure_count_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardPageDAO {
  DashboardPageDAO();

  Future<int> getAccountsCount() async {
    try {
      final response = await  http.get(Constants.serviceBaseURL + Constants.accountServicePath, headers: {"Accept": "application/json"},);
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
      final response = await http.get(Constants.serviceBaseURL + Constants.vehicleServicePath, headers: {"Accept": "application/json"},);

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
}