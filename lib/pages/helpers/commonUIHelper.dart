import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/dashboardPageController.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';
import 'package:sure_count_app/utilities/utility.dart';

class CommonUIHelper {
  CommonUIHelper();

  Widget getDashboardPageAppBar(context, drawerKey) {
    var appBar = AppBar(
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
          drawerKey.currentState.openDrawer();
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
          onPressed: () => Utility().showLogoutDialog(context),
        )
      ],
    );

    return appBar;
  }

  Widget createGenericPageAppBar(BuildContext context, String appBarTitle, GlobalKey<ScaffoldState> drawerKey) {
    var appBar = AppBar(
      title: Text(
        appBarTitle,
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
          drawerKey.currentState.openDrawer();
        }
      ),
      backgroundColor: Colors.blueGrey,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: SizeConfig.safeBlockHorizontal*6,
          ),
          onPressed: () => Utility().onHomeButtonPress(context),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.white,
            size: SizeConfig.safeBlockHorizontal*6,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.white,
            size: SizeConfig.safeBlockHorizontal*6,
          ),
          onPressed: () => Utility().showLogoutDialog(context),
        )
      ],
    );

    return appBar;
  }

  Widget getDrawer(context) {
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
              leading: Icon(Icons.assessment),
              title: Text('Accounts'),
              onTap: () => () => DashboardPageController().onAccountsTileTap(context),
            ),
            ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text('Vehicles'),
              onTap: () => DashboardPageController().onVehiclesTileTap(context),
            ),
            ListTile(
              leading: Icon(Icons.video_call),
              title: Text('Live Show'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Geo Events'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.local_library),
              title: Text('Evidences'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.featured_play_list),
              title: Text('Reports'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Preferences'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => Utility().showLogoutDialog(context),
            )
          ]
        ),
    );

    return drawerContent;
  }

  Widget createPageBottomBar() {
    var pageBottomBar = BottomAppBar(
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
    );

    return pageBottomBar;
  }
}