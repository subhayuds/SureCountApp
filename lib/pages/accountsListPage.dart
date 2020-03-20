import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/account.dart';
import 'package:sure_count_app/controllers/accountsListPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountAccountsListPage extends StatefulWidget {
  @override
  _SureCountAccountsListPageState createState() => _SureCountAccountsListPageState();
}

class _SureCountAccountsListPageState extends State<SureCountAccountsListPage> {
  void initState() {
    super.initState();
  }

  Widget _getAccountDataTable(List<Account> accountList) {
    var tableRowList = accountList
      .map((account) => TableRow(
        children: <Widget>[
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                AccountsListPageController().onAccountListItemTap(context, account.accountId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    account.accountName.toString(),
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                AccountsListPageController().onAccountListItemTap(context, account.accountId);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    account.emailId.toString(),
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
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: TableRowInkWell(
              onTap: () {
                AccountsListPageController().onAccountListItemTap(context, account.accountId);
              },
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25, SizeConfig.safeBlockHorizontal, SizeConfig.blockSizeVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    account.phone.toString(),
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
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: SizeConfig.safeBlockVertical*6,
                padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25, SizeConfig.safeBlockHorizontal*0.5, SizeConfig.safeBlockVertical*0.25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
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
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Accounts List', _drawerKey),
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
                future: AccountsListPageController().getAccountList(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return this._getAccountDataTable(snapshot.data);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}