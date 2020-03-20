import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sure_count_app/controllers/dashboardPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountDashboardPage extends StatefulWidget {
  @override
  _SureCountDashboardPageState createState() => _SureCountDashboardPageState();
}

class _SureCountDashboardPageState extends State<SureCountDashboardPage> {
  Widget _getAccountsCount(int accountsCount) {
    var accountsCountText = Padding(
    padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal, right:SizeConfig.safeBlockHorizontal),
      child: Container(
        alignment: Alignment.centerRight,
        height: SizeConfig.safeBlockVertical*6,
        child:FittedBox(
          fit:BoxFit.fitHeight,
          child:Text(
            (accountsCount == 0)?'--':accountsCount.toString(),
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
  
  Widget _getVehiclesCount(int vehiclesCount) {
    var vehiclesCountText = Padding(
      padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal, right:SizeConfig.safeBlockHorizontal),
      child: Container(
        alignment: Alignment.centerRight,
        height: SizeConfig.safeBlockVertical*6,
        child:FittedBox(
          fit:BoxFit.fitHeight,
          child:Text(
            (vehiclesCount == 0)?'--':vehiclesCount.toString(),
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

  Widget _createDashboardAccountsTile(context) {
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
                        future: DashboardPageController().getAccountsCount(),
                        builder: (BuildContext context,AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return _getAccountsCount(snapshot.data);
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

  Widget _createDashboardVehiclesTile(context) {
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
                      future: DashboardPageController().getVehiclesCount(),
                      builder: (BuildContext context,AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return _getVehiclesCount(snapshot.data);
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

  Widget _createDashboardDevicesTile(context) {
    var buildingsTile = GestureDetector(
      onTap: () => DashboardPageController().onDevicesTileTap(context),
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
                    child: Text('Devices',
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
                    child:Text('Manage devices',
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
                          Icons.devices,
                          color: Colors.white,
                          size: SizeConfig.safeBlockHorizontal*9,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                        future: DashboardPageController().getDeviesCount(),
                        builder: (BuildContext context,AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return this._getAccountsCount(snapshot.data);
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

  Widget _createDashboardOnlineVehiclesTile(context) {
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
                      color: Colors.green,
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

  Widget _createDashboardOfflineVehiclesTile(context) {
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
                      color: Colors.red,
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
                  child: Text('Offline Vehicles',
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

  Widget _createDashboardInwardEventsTile(context) {
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

  Widget _createDashboardOutwardEventsTile(context) {
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

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
      const StaggeredTile.count(2,2),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(2, 2),
      const StaggeredTile.count(3, 2),
      const StaggeredTile.count(3, 2),
      const StaggeredTile.count(3, 2),
      const StaggeredTile.count(3, 2),
    ];
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _drawerKey,
        appBar: CommonUIHelper().getDashboardPageAppBar(context, _drawerKey),
        drawer: Drawer(
          child: CommonUIHelper().getDrawer(context),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Background.png"),
              fit: BoxFit.fill,  
            )
          ),
          child: StaggeredGridView.count(
            crossAxisCount: 6,
            mainAxisSpacing: SizeConfig.safeBlockHorizontal*2,
            crossAxisSpacing: SizeConfig.safeBlockHorizontal*2,
            padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal),
            staggeredTiles: _staggeredTiles,
            children: <Widget>[
              this._createDashboardAccountsTile(context),
              this._createDashboardVehiclesTile(context),
              this._createDashboardDevicesTile(context),
              this._createDashboardOnlineVehiclesTile(context),
              this._createDashboardOfflineVehiclesTile(context),
              this._createDashboardInwardEventsTile(context),
              this._createDashboardOutwardEventsTile(context),
            ],
          )
        ),
        bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
      ),
    );
  }
}