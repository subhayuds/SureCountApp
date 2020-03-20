import 'package:flutter/material.dart';
import 'package:sure_count_app/models/dashboardPageDAO.dart';
import 'package:sure_count_app/models/devicesListPageDAO.dart';
import 'package:sure_count_app/models/vehiclesListPageDAO.dart';

class DashboardPageController {
  DashboardPageController();

  void onAccountsTileTap(context) {
    Navigator.pushNamed(context, '/accountsList');
  }

  void onVehiclesTileTap(context) {
    VehiclesListPageDAO().getVehiclesList();
    Navigator.pushNamed(context, '/vehiclesList');
  }

  void onDevicesTileTap(context) {
    DevicesListPageDAO().getDeviceList();
    Navigator.pushNamed(context, '/devicesList');
  }

  Future getAccountsCount() async {
    int accountData = await DashboardPageDAO().getAccountsCount();
    return accountData;
  }

  Future getVehiclesCount() async {
    int vehicleData = await DashboardPageDAO().getAccountsCount();
    return vehicleData;
  }

  Future getDeviesCount() async {
    int deviceData = await DashboardPageDAO().getDevicesCount();
    return deviceData;
  }
}