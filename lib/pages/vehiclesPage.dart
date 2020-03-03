import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/vehiclePageController.dart';
import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/utilities/utility.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountVehiclesPage extends StatefulWidget {
  @override
  _SureCountVehiclesPageState createState() => _SureCountVehiclesPageState();
}

class _SureCountVehiclesPageState extends State<SureCountVehiclesPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget getVehicleDataTable(List<Vehicle> vehicleList) {
    var tableRowList = vehicleList
      .map((vehicle) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal, 0.0, SizeConfig.safeBlockHorizontal),
                child: Text(
                  vehicle.vehicleId.toString(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xff222A35),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*4,
                  ),
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                vehicle.registrationNumber.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xff222A35),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*4,
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                vehicle.organizationId.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xff222A35),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*4,
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                vehicle.deviceId.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xff222A35),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*4,
                ),
              ),
            ),
          ),
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
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, 0.0, SizeConfig.safeBlockHorizontal*2),
                child: Text('Vehicle ID',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Californian FB',
                    letterSpacing: 1.0,
                    fontSize: SizeConfig.safeBlockHorizontal*5,
                  ),
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text('Regn. No',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*5,
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Org. ID',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*5,
                ),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Device ID',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Californian FB',
                  letterSpacing: 1.0,
                  fontSize: SizeConfig.safeBlockHorizontal*5,
                ),
              ),
            ),
          ),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicles",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
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
            onPressed: () => Utility().showLogoutAlert(context),
          )
        ],
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
                    return getVehicleDataTable(snapshot.data);
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
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}