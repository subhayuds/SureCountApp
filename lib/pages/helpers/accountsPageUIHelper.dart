import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/account.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class AccountsPageUIHelper {
  AccountsPageUIHelper();

  Widget getAccountDataTable(List<Account> accountList) {
    var tableRowList = accountList
      .map((account) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal, 0.0, SizeConfig.safeBlockHorizontal),
                child: Text(
                  account.accountName.toString(),
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
                account.emailId.toString(),
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
                account.phone.toString(),
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
                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.safeBlockHorizontal*2, 0.0, SizeConfig.safeBlockHorizontal*2),
                child: Text('Account Name',
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
              child: Text('Email ID',
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
                'Phone',
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