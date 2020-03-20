import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/models/vehiclesListPageDAO.dart';
import 'package:sure_count_app/utilities/utility.dart';

class VehiclesListPageController {
  VehiclesListPageController();

  Future getVehicleList(BuildContext context) async {
    String vehicleData = await VehiclesListPageDAO().getVehiclesList();
    return Vehicle().vehicles(vehicleData);
  }

  Future<void> onVehicleListItemTap(BuildContext context, num vehicleId) async {
    VehiclesListPageDAO().getVehicleDetails(vehicleId).then((responseVehicleDetailsData){
      List<Vehicle> vehicleDetailsList = Vehicle().vehicles(responseVehicleDetailsData);
      if(vehicleDetailsList == null || vehicleDetailsList.length == 0)
        Utility().showGenericAlert(context, 'Vehicle details not found!!!');
      else
        Navigator.pushNamed(
          context, 
          '/vehiclesDetail',
          arguments: <String, Vehicle>{
            'vehicleDetails': vehicleDetailsList[0]
          }
        );
    });
  }
}