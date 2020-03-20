import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/controllers/vehicleListPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountVehiclesListPage extends StatefulWidget {
  @override
  _SureCountVehiclesListPageState createState() => _SureCountVehiclesListPageState();
}

class _SureCountVehiclesListPageState extends State<SureCountVehiclesListPage> {
  void initState() {
    super.initState();
  }

  Widget _getVehicleDataTable(List<Vehicle> vehicleList) {
    var tableRowList = vehicleList
      .map((vehicle) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                VehiclesListPageController().onVehicleListItemTap(context, vehicle.vehicleId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    vehicle.registrationNumber.toString(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xff222A35),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      decoration: TextDecoration.underline,
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                VehiclesListPageController().onVehicleListItemTap(context, vehicle.vehicleId);
              },
              child: Container(
                width: 300,
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    vehicle.organizationId.toString(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xff222A35),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.0,
                      fontSize: SizeConfig.safeBlockHorizontal*5,
                    ),
                  ),
                ),
              ),
            ),
          )
        ]
    ))
    .toList();

    tableRowList.insert(
      0,
      TableRow(
        decoration: BoxDecoration(
          color: Color(0xff222A35),
        ),
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Container(
              alignment: Alignment.center,
              height: SizeConfig.safeBlockVertical*6,
              padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text('Registration No',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*6,
                  ),
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Container(
              alignment: Alignment.center,
              height: SizeConfig.safeBlockVertical*6,
              padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text('Organization ID',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*6,
                  ),
                ),
              ),
            ),
          )
        ]
      )
    );

    return Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: Map(),
      children: tableRowList
    );
  }
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Vehicles List', _drawerKey),
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
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              margin: EdgeInsets.all(10),
              child: FutureBuilder(
                future: VehiclesListPageController().getVehicleList(context),
                builder: (BuildContext context,AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return this._getVehicleDataTable(snapshot.data);
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