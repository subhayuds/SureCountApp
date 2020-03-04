import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/vehiclePageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/pages/helpers/vehiclesPageUIHelper.dart';

class SureCountVehiclesPage extends StatefulWidget {
  @override
  _SureCountVehiclesPageState createState() => _SureCountVehiclesPageState();
}

class _SureCountVehiclesPageState extends State<SureCountVehiclesPage> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createVehiclesPageAppBar(context, _drawerKey),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: FutureBuilder(
                future: VehiclePageController().getVehicleList(),
                builder: (BuildContext context,AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return VehiclesPageUIHelper().getVehicleDataTable(snapshot.data);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
              ),
            ),
          ],
        )
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}