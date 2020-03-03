import 'package:flutter/material.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class Utility {
  Utility();

  void onLogoutButtonPress(context) {
    Navigator.pushNamed(context, '/login');
  }

  void onHomeButtonPress(context) {
    Navigator.pushNamed(context, '/dashboard');
  }

  void showLogoutAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert"),
          content: Text("Are you sure to logout?"),
          actions: <Widget>[
            RaisedButton(
              child: Text("Logout",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.5,
                  fontSize: SizeConfig.safeBlockHorizontal*3,
                ),
              ),
              color: Color(0xff222A35),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }
            ),
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
    );
  }
}