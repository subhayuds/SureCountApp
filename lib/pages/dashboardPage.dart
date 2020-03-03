import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/dashboardPageController.dart';
import 'package:sure_count_app/models/dashboardPageDAO.dart';
import 'package:sure_count_app/utilities/utility.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountDashboardPage extends StatefulWidget {
  @override
  _SureCountDashboardPageState createState() => _SureCountDashboardPageState();
}

class _SureCountDashboardPageState extends State<SureCountDashboardPage> {
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

  Widget getDrawer() {
    var drawerContent = Container(
        decoration: BoxDecoration(
          
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.blueGrey,
                    size: SizeConfig.blockSizeHorizontal*20
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical),
                    child: Text(
                      "Hello Administrator",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Californian FB',
                        letterSpacing: 1.0,
                        fontSize: SizeConfig.safeBlockHorizontal*5,
                      ),
                    ),
                  ),
                ]
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Background.png')
                  ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Dashboard'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.featured_play_list),
              title: Text('Features'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.assessment),
              title: Text('Accounts'),
              onTap: () => () => DashboardPageController().onAccountsTileTap(context),
            ),
            ListTile(
              leading: Icon(Icons.local_library),
              title: Text('Evidences'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.video_call),
              title: Text('Live Video'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Events'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text('Vehicles'),
              onTap: () => DashboardPageController().onVehiclesTileTap(context),
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Buildings'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Users'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.devices),
              title: Text('Devices'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => Utility().showLogoutAlert(context),
            )
          ]
        ),
    );

    return drawerContent;
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

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text("SureCount Dashbard",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _drawerKey.currentState.openDrawer();
          }
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal*8,
            ),
            onPressed: () => Utility().onLogoutButtonPress(context),
          )
        ],
      ),
      drawer: new Drawer(
        child: getDrawer(),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,  
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*4, SizeConfig.safeBlockHorizontal*2, 0.0),
                crossAxisCount: 3,
                mainAxisSpacing: SizeConfig.safeBlockHorizontal*6,
                crossAxisSpacing: SizeConfig.safeBlockHorizontal*4,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => DashboardPageController().onAccountsTileTap(context),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff222A35),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Accounts',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.5,
                              fontSize: SizeConfig.safeBlockHorizontal*6,
                            ),
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical*0.75),
                          Text('Manage accounts',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.0,
                              fontSize: SizeConfig.safeBlockHorizontal*4,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*2, 0.0),
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
                  GestureDetector(
                    onTap: () => DashboardPageController().onVehiclesTileTap(context),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff222A35),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Vehicles',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.5,
                              fontSize: SizeConfig.safeBlockHorizontal*6,
                            ),
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical*0.75),
                          Text('Manage vehicles',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Californian FB',
                              letterSpacing: 1.0,
                              fontSize: SizeConfig.safeBlockHorizontal*4,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, 0.0, 0.0),
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
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xff222A35),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Buildings',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Californian FB',
                            letterSpacing: 1.5,
                            fontSize: SizeConfig.safeBlockHorizontal*6,
                          ),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical*0.75),
                        Text('Manage building',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Californian FB',
                            letterSpacing: 1.0,
                            fontSize: SizeConfig.safeBlockHorizontal*4,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, 0.0, 0.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: SizeConfig.safeBlockHorizontal*9,
                                ),
                              ),
                              Expanded(
                                child: Text('17',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Californian FB',
                                    letterSpacing: 1.0,
                                    fontSize: SizeConfig.safeBlockHorizontal*9,
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*2, 0, SizeConfig.safeBlockHorizontal*2, 0.0),
                crossAxisCount: 2,
                mainAxisSpacing: SizeConfig.safeBlockHorizontal*6,
                crossAxisSpacing: SizeConfig.safeBlockVertical*4,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical*2.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
                      height: SizeConfig.safeBlockVertical*15,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical*2.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
                      height: SizeConfig.safeBlockVertical*15,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical*2.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
                      height: SizeConfig.safeBlockVertical*15,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical*2.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,SizeConfig.safeBlockHorizontal,0),
                      height: SizeConfig.safeBlockVertical*15,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                      ),
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockHorizontal*30)
          ]
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Text(
          'Developed by Cognovare Solution Private Limited.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*3,
          ),
        ),
      ),
    );
  }
}