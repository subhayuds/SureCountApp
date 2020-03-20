import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountVehiclesDetailsPage extends StatefulWidget {
  @override
  _SureCountVehiclesDetailsPageState createState() => _SureCountVehiclesDetailsPageState();
}

class _SureCountVehiclesDetailsPageState extends State<SureCountVehiclesDetailsPage> {
  void initState() {
    super.initState();
  }

  Widget _getVehicleDetails(Vehicle vehicle) {
    List vehicleDeatils = [
      ListTile(
        leading: Icon(
          Icons.directions_bus,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Registration Number',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.registrationNumber,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.business,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Organization',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.organizationId.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.devices,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Devices',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.deviceId.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.location_on,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Latitude / Longitude',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.latitude.toString() + ' / ' + vehicle.longitude.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.healing,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Altitude',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.altitude.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.directions,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Direction',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          vehicle.direction.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      )
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: vehicleDeatils
    );
  }
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    Map navigationArgumentMap = ModalRoute.of(context).settings.arguments;
    Vehicle _vehicleDetails = navigationArgumentMap['vehicleDetails'];
    
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Vehicle Details', _drawerKey),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              margin: EdgeInsets.all(10),
              child: this._getVehicleDetails(_vehicleDetails),
            ),
            SizedBox(height: SizeConfig.safeBlockHorizontal*10),
            RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: SizeConfig.safeBlockHorizontal*10,
                  ),
                  Text("Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.5,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ]
              ),
              color: Color(0xff222A35),
              onPressed: () {
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}