import 'package:flutter/material.dart';
import 'package:sure_count_app/pages/loginPage.dart';
import 'package:sure_count_app/pages/dashboardPage.dart';
import 'package:sure_count_app/pages/accountsPage.dart';
import 'package:sure_count_app/pages/vehiclesPage.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    '/login': (context) => SureCountLoginPage(),
    '/dashboard': (context) => SureCountDashboardPage(),
    '/accounts': (context) => SureCountAccountsPage(),
    '/vehicles': (context) => SureCountVehiclesPage(),
  };
}