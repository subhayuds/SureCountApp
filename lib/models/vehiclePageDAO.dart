import 'package:sure_count_app/utilities/constants.dart';
import 'package:http/http.dart' as http;

class VehiclePageDAO {
  VehiclePageDAO();

  Future getVehiclesList() async {
    final response = await http.get(Constants.serviceBaseURL + Constants.vehicleServicePath, headers: {"Accept": "application/json"},);

    if (response.statusCode == 200) {
      //var vehicleData = (json.decode(response.body))["vehicles"] as List;
      //var vehicleListData = data["vehicles"] as List;
      
      return response.body;
    } else {
      throw Exception('Failed to load vehicles');
    }
  }
}