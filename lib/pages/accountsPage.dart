import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/accountsPageController.dart';
import 'package:sure_count_app/pages/helpers/accountsPageUIHelper.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';

class SureCountAccountsPage extends StatefulWidget {
  @override
  _SureCountAccountsPageState createState() => _SureCountAccountsPageState();
}

class _SureCountAccountsPageState extends State<SureCountAccountsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createAccountsPageAppBar(context, _drawerKey),
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
                future: AccountsPageController().getAccountList(),
                builder: (BuildContext context,AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return AccountsPageUIHelper().getAccountDataTable(snapshot.data);
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