import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/account.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountAccountDetailsPage extends StatefulWidget {
  @override
  _SureCountAccountDetailsPageState createState() => _SureCountAccountDetailsPageState();
}

class _SureCountAccountDetailsPageState extends State<SureCountAccountDetailsPage> {
  void initState() {
    super.initState();
  }

  Widget _getAccountDetails(Account account) {
    List accountDeatils = [
      ListTile(
        leading: Icon(
          Icons.assessment,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Organization Name',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          account.accountName,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.email,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Email',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          account.emailId,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.local_phone,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Phone Number',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          account.phone,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      ),
      Divider(
        height: SizeConfig.safeBlockVertical*2,
      ),
      new ListTile(
        leading: Icon(
          Icons.transfer_within_a_station,
          color: Color(0xff222A35),
          size: SizeConfig.safeBlockHorizontal*10,
        ),
        title: Text(
          'Partner',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.bold,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*8,
          ),
        ),
        subtitle: Text(
          account.partnerId.toString(),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff222A35),
            fontWeight: FontWeight.normal,
            fontFamily: 'Californian FB',
            letterSpacing: 1.0,
            fontSize: SizeConfig.safeBlockHorizontal*6,
          ),
        ),
      )
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: accountDeatils
    );
  }
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    Map navigationArgumentMap = ModalRoute.of(context).settings.arguments;
    Account _accountDetails = navigationArgumentMap['accountDetails'];
    
    return Scaffold(
      key: _drawerKey,
      appBar: CommonUIHelper().createGenericPageAppBar(context, 'Vehicle Details', _drawerKey),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              margin: EdgeInsets.all(10),
              child: this._getAccountDetails(_accountDetails),
            ),
            SizedBox(height: SizeConfig.safeBlockHorizontal*10),
            RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: SizeConfig.safeBlockHorizontal*10,
                  ),
                  Text("Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.5,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ]
              ),
              color: Color(0xff222A35),
              onPressed: () {
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}