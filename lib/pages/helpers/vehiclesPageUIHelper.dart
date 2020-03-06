import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/vehicle.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class VehiclesPageUIHelper {
  VehiclesPageUIHelper();

  Widget getVehicleDataTable(List<Vehicle> vehicleList) {
    var tableRowList = vehicleList
      .map((vehicle) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
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
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.centerLeft,
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
                height: SizeConfig.safeBlockVertical*3,
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
                height: SizeConfig.safeBlockVertical*3,
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
}