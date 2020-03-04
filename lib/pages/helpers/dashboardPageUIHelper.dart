import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/dashboardPageController.dart';
import 'package:sure_count_app/models/dashboardPageDAO.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class DashboardPageUIHelper {
  DashboardPageUIHelper();

  Widget getAccountsCount(int accountsCount) {
    var accountsCountText = Text(accountsCount.toString(),
      textAlign: TextAlign.end,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'Californian FB',
        letterSpacing: 1.0,
        fontSize: SizeConfig.safeBlockHorizontal*8,
      ),
    );

    return accountsCountText;
  }
  
  Widget getVehiclesCount(int vehiclesCount) {
  var vehiclesCountText = Text(vehiclesCount.toString(),
    textAlign: TextAlign.end,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'Californian FB',
      letterSpacing: 1.0,
      fontSize: SizeConfig.safeBlockHorizontal*8,
    ),
  );

  return vehiclesCountText;
}

  Widget createDashboardAccountsTile(context) {
    var accountsTile = GestureDetector(
      onTap: () => DashboardPageController().onAccountsTileTap(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color(0xff222A35),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
                child: Text('Accounts',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.5,
                    fontSize: SizeConfig.safeBlockHorizontal*6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
                child: Text('Manage all accounts',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*4,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*3, 0.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.assessment,
                        color: Colors.white,
                        size: SizeConfig.safeBlockHorizontal*9,
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                        future: DashboardPageDAO().getAccountsCount(),
                        builder: (BuildContext context,AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return getAccountsCount(snapshot.data);
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return accountsTile;
  }

  Widget createDashboardVehiclesTile(context) {
    var vehiclesTile = GestureDetector(
      onTap: () => DashboardPageController().onVehiclesTileTap(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color(0xff222A35),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
              child: Text('Vehicles',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.5,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
              child: Text('Manage all vehicles',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*4,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*3, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.directions_bus,
                      color: Colors.white,
                      size: SizeConfig.safeBlockHorizontal*9,
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: DashboardPageDAO().getVehiclesCount(),
                      builder: (BuildContext context,AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return getVehiclesCount(snapshot.data);
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );

    return vehiclesTile;
  }

  Widget createDashboardBuildingsTile(context) {
    var buildingsTile = GestureDetector(
      onTap: () => DashboardPageController().onVehiclesTileTap(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color(0xff222A35),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
              child: Text('Buildings',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.5,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.safeBlockVertical, top:SizeConfig.safeBlockVertical),
              child: Text('Manage all buildings',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*4,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*3, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.account_balance,
                      color: Colors.white,
                      size: SizeConfig.safeBlockHorizontal*9,
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: DashboardPageDAO().getVehiclesCount(),
                      builder: (BuildContext context,AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return getVehiclesCount(snapshot.data);
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );

    return buildingsTile;
  }

  Widget createDashboardOnlineVehiclesTile(context) {
    var buildingsTile = Container(
      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.local_shipping,
                color: Colors.blueGrey,
                size: SizeConfig.safeBlockHorizontal*10,
              ),
              Text('Online Vehicles',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:SizeConfig.safeBlockHorizontal*2),
                child: Text('100',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*8,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );

    return buildingsTile;
  }

  Widget createDashboardDeviceRestartsTile(context) {
    var buildingsTile = Container(
      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.devices,
                color: Colors.blueGrey,
                size: SizeConfig.safeBlockHorizontal*10,
              ),
              Text('Device Restarts',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:SizeConfig.safeBlockHorizontal*2),
                child: Text('29',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*8,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );

    return buildingsTile;
  }

  Widget createDashboardInwardEventsTile(context) {
    var buildingsTile = Container(
      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.call_received,
                color: Colors.blueGrey,
                size: SizeConfig.safeBlockHorizontal*10,
              ),
              Text('In Events',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:SizeConfig.safeBlockHorizontal*2),
                child: Text('59',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*8,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );

    return buildingsTile;
  }

  Widget createDashboardOutwardEventsTile(context) {
    var outwardsEventsTile = Container(
      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(width: 1, color: Colors.blueGrey)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.call_made,
                color: Colors.blueGrey,
                size: SizeConfig.safeBlockHorizontal*10,
              ),
              Text('Out Events',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:SizeConfig.safeBlockHorizontal*2),
                child: Text('100',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*8,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );

    return outwardsEventsTile;
  }
}