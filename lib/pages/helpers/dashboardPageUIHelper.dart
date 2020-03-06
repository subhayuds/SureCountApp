import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/dashboardPageController.dart';
import 'package:sure_count_app/models/dashboardPageDAO.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class DashboardPageUIHelper {
  DashboardPageUIHelper();

  Widget getAccountsCount(int accountsCount) {
    var accountsCountText = Padding(
    padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal, right:SizeConfig.safeBlockHorizontal),
      child: Container(
        alignment: Alignment.centerRight,
        height: SizeConfig.safeBlockVertical*6,
        child:FittedBox(
          fit:BoxFit.fitHeight,
          child:Text(
            accountsCount.toString(),
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Californian FB',
              letterSpacing: 1.0,
              fontSize: SizeConfig.safeBlockVertical*8,
            ),
          ),
        ),
      ),
    );

    return accountsCountText;
  }
  
  Widget getVehiclesCount(int vehiclesCount) {
  var vehiclesCountText = Padding(
    padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal, right:SizeConfig.safeBlockHorizontal),
    child: Container(
      alignment: Alignment.centerRight,
      height: SizeConfig.safeBlockVertical*6,
      child:FittedBox(
        fit:BoxFit.fitHeight,
        child:Text(
          vehiclesCount.toString(),
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockVertical*8,
          ),
        ),
      ),
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
                padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, top:SizeConfig.safeBlockVertical*1.5, right:SizeConfig.safeBlockHorizontal*2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: SizeConfig.safeBlockVertical*4,
                  child: FittedBox(
                    fit:BoxFit.fitHeight,
                    child:Text('Accounts',
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, right:SizeConfig.safeBlockHorizontal*2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: SizeConfig.safeBlockVertical*2,
                  child: FittedBox(
                    fit:BoxFit.fitHeight,
                    child:Text('Manage accounts',
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
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockVertical*2, SizeConfig.safeBlockHorizontal*2, 0.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: SizeConfig.safeBlockVertical*6,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(
                          Icons.assessment,
                          color: Colors.white,
                          size: SizeConfig.safeBlockHorizontal*9,
                        ),
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
              padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, top:SizeConfig.safeBlockVertical*1.5, right:SizeConfig.safeBlockHorizontal*2),
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit:BoxFit.fitHeight,
                  child:Text('Vehicles',
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, right:SizeConfig.safeBlockHorizontal*2),
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*2,
                child: FittedBox(
                  fit:BoxFit.fitHeight,
                  child:Text('Manage vehicles',
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
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockVertical*2, SizeConfig.safeBlockHorizontal*2, 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    height: SizeConfig.safeBlockVertical*6,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Icon(
                        Icons.directions_bus,
                        color: Colors.white,
                        size: SizeConfig.safeBlockHorizontal*9,
                      ),
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
                padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, top:SizeConfig.safeBlockVertical*1.5, right:SizeConfig.safeBlockHorizontal*2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: SizeConfig.safeBlockVertical*4,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*2, right:SizeConfig.safeBlockHorizontal*2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: SizeConfig.safeBlockVertical*2,
                  child: FittedBox(
                    fit:BoxFit.fitHeight,
                    child:Text('Manage buildings',
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
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockVertical*2, SizeConfig.safeBlockHorizontal*2, 0.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: SizeConfig.safeBlockVertical*6,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(
                          Icons.account_balance,
                          color: Colors.white,
                          size: SizeConfig.safeBlockHorizontal*9,
                        ),
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
              Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Icon(
                      Icons.local_shipping,
                      color: Colors.blueGrey,
                      size: SizeConfig.safeBlockHorizontal*10,
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*2, right: SizeConfig.safeBlockHorizontal*2),
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('Online Vehicles',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0.0),
                child: Container(
                  alignment: Alignment.center,
                  height: SizeConfig.safeBlockVertical*6,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
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
              Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Icon(
                      Icons.devices,
                      color: Colors.blueGrey,
                      size: SizeConfig.safeBlockHorizontal*10,
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*2, right: SizeConfig.safeBlockHorizontal*2),
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('Device restarts',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0.0),
                child: Container(
                  alignment: Alignment.center,
                  height: SizeConfig.safeBlockVertical*6,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
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
              Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Icon(
                      Icons.call_received,
                      color: Colors.blueGrey,
                      size: SizeConfig.safeBlockHorizontal*10,
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*2, right: SizeConfig.safeBlockHorizontal*2),
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('In Events',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0.0),
                child: Container(
                  alignment: Alignment.center,
                  height: SizeConfig.safeBlockVertical*6,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
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
              Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Icon(
                      Icons.call_made,
                      color: Colors.blueGrey,
                      size: SizeConfig.safeBlockHorizontal*10,
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*2, right: SizeConfig.safeBlockHorizontal*2),
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('Out Events',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0.0),
                child: Container(
                  alignment: Alignment.center,
                  height: SizeConfig.safeBlockVertical*6,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text('74',
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