import 'package:flutter/material.dart';
import 'package:sure_count_app/models/dashboardPageDAO.dart';
import 'package:sure_count_app/models/vehiclePageDAO.dart';

class DashboardPageController {
  DashboardPageController();

  void onAccountsTileTap(context) {
    Navigator.pushNamed(context, '/accounts');
  }

  void onVehiclesTileTap(context) {
    VehiclePageDAO().getVehiclesList();
    Navigator.pushNamed(context, '/vehicles');
  }

  Future getAccountsCount() async {
    int accountData = await DashboardPageDAO().getAccountsCount();
    return accountData;
  }

  Future getVehiclesCount() async {
    int vehicleData = await DashboardPageDAO().getAccountsCount();
    return vehicleData;
  }
}