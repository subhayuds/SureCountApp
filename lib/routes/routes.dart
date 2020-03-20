import 'package:flutter/material.dart';
import 'package:sure_count_app/pages/accountsDetailsPage.dart';
import 'package:sure_count_app/pages/deviceDetailsPage.dart';
import 'package:sure_count_app/pages/devicesListPage.dart';
import 'package:sure_count_app/pages/loginPage.dart';
import 'package:sure_count_app/pages/dashboardPage.dart';
import 'package:sure_count_app/pages/accountsListPage.dart';
import 'package:sure_count_app/pages/vehicleDetailsPage.dart';
import 'package:sure_count_app/pages/vehiclesListPage.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    '/login': (context) => SureCountLoginPage(),
    '/dashboard': (context) => SureCountDashboardPage(),
    '/accountsList': (context) => SureCountAccountsListPage(),
    '/vehiclesList': (context) => SureCountVehiclesListPage(),
    '/devicesList': (context) => SureCountDevicesListPage(),
    '/vehicleDetails': (context) => SureCountVehiclesDetailsPage(),
    '/accountDetails': (context) => SureCountAccountDetailsPage(),
    '/deviceDetails': (context) => SureCountDeviceDetailsPage(),
  };
}