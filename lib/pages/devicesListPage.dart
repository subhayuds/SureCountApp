import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/device.dart';
import 'package:sure_count_app/controllers/devicesListPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountDevicesListPage extends StatefulWidget {
  @override
  _SureCountDevicesListPageState createState() => _SureCountDevicesListPageState();
}

class _SureCountDevicesListPageState extends State<SureCountDevicesListPage> {
  void initState() {
    super.initState();
  }

  Widget _getDevicesDataTable(List<Device> devicesList) {
    var tableRowList = devicesList
      .map((device) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                DevicesListPageController().onDeviceListItemTap(context, device.deviceId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    device.organization.toString(),
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                DevicesListPageController().onDeviceListItemTap(context, device.deviceId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    device.deviceSerial,
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                DevicesListPageController().onDeviceListItemTap(context, device.deviceId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    device.deviceIMEI,
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
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('Organization',
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('Serial',
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text('IMEI',
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
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Devices List', _drawerKey),
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
                  future: DevicesListPageController().getDevicesList(),
                  builder: (BuildContext context,AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return this._getDevicesDataTable(snapshot.data);
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
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}