import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/device.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountDeviceDetailsPage extends StatefulWidget {
  @override
  _SureCountDeviceDetailsPageState createState() => _SureCountDeviceDetailsPageState();
}

class _SureCountDeviceDetailsPageState extends State<SureCountDeviceDetailsPage> {
  void initState() {
    super.initState();
  }

  Widget _getDeviceDetails(Device device) {
    List<Widget> deviceDeatils = [
      ListTile(
        leading: Icon(
          Icons.fingerprint,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Serial Number',
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
          device.deviceSerial,
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
          Icons.sim_card,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'SIM Card Number',
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
          device.simCard,
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
          Icons.merge_type,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Modem Type',
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
          device.modemType.toString(),
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
          Icons.smartphone,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Device IMEI',
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
          device.deviceIMEI,
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
          device.organization.toString(),
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
          Icons.widgets,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Installation Type',
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
          device.installationType.toString(),
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
          Icons.timer,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Last Heartbeat Time',
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
          device.lastHbTime.toString(),
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
          'Last Latitude / Longitude',
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
          device.lastLatitude.toString() + ' / ' + device.lastLongitude.toString(),
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
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: deviceDeatils
    );
  }
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    Map navigationArgumentMap = ModalRoute.of(context).settings.arguments;
    Device _deviceDetails = navigationArgumentMap['deviceDetails'];
    
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Vehicle Details', _drawerKey),
      drawer: Drawer(
        child: CommonUIHelper().getDrawer(context),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                child: this._getDeviceDetails(_deviceDetails),
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
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}