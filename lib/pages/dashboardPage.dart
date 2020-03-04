import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/pages/helpers/dashboardPageUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountDashboardPage extends StatefulWidget {
  @override
  _SureCountDashboardPageState createState() => _SureCountDashboardPageState();
}

class _SureCountDashboardPageState extends State<SureCountDashboardPage> {
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
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().getDashboardPageAppBar(context, _drawerKey),
      drawer: Drawer(
        child: CommonUIHelper().getDrawer(context),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
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
            DashboardPageUIHelper().createDashboardAccountsTile(context),
            DashboardPageUIHelper().createDashboardVehiclesTile(context),
            DashboardPageUIHelper().createDashboardBuildingsTile(context),
            DashboardPageUIHelper().createDashboardOnlineVehiclesTile(context),
            DashboardPageUIHelper().createDashboardDeviceRestartsTile(context),
            DashboardPageUIHelper().createDashboardInwardEventsTile(context),
            DashboardPageUIHelper().createDashboardOutwardEventsTile(context),
          ],
        )
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}