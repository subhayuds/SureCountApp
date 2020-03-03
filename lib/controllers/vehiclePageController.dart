import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/models/vehiclePageDAO.dart';

class VehiclePageController {
  VehiclePageController();

  Future getVehicleList() async {
    String vehicleData = await VehiclePageDAO().getVehiclesList();
    return Vehicle().vehicles(vehicleData);
  }
}