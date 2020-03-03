import 'package:flutter/material.dart';
import 'package:sure_count_app/pages/loginPage.dart';
import 'package:sure_count_app/routes/routes.dart';

void main() => runApp(SureCountApp());

class SureCountApp extends StatefulWidget {
  @override
  _SureCountAppState createState() => _SureCountAppState();
}

class _SureCountAppState extends State<SureCountApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SureCountLoginPage(title: 'SureCount App Login Page'),
      initialRoute: '/login',
      routes: Routes().routes,
    );
  }
}