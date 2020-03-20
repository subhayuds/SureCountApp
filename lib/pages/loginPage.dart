import 'package:flutter/material.dart';
import 'package:sure_count_app/beans/loginData.dart';
import 'package:sure_count_app/controllers/loginPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/utilities/sizeConfig.dart';

class SureCountLoginPage extends StatefulWidget {
  SureCountLoginPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SureCountLoginPageState createState() => _SureCountLoginPageState();
}

class _SureCountLoginPageState extends State<SureCountLoginPage> {
  //_SureCountLoginPageState({Key key, this.title}) : super(key: key);
  //final String title;
  LoginData loginData = new LoginData();
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController _txtUserNameController = TextEditingController(text: 'Admin');
  TextEditingController _txtPasswordController = TextEditingController(text: 'admin');

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
    // other dispose methods
    _txtUserNameController.dispose();
    _txtPasswordController.dispose();
  }

  Widget _createLoginPageBody(BuildContext context)  {
    var loginPageBody = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background.png"),
          fit: BoxFit.fill,  
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Welcome To',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff222A35),
              fontWeight: FontWeight.w800,
              fontFamily: 'Californian FB',
              letterSpacing: 1.5,
              fontSize: SizeConfig.safeBlockHorizontal*6,
            ),
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal*4),
          Text(
            'SureCount Console',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff222A35),
              fontWeight: FontWeight.w800,
              fontFamily: 'Californian FB',
              letterSpacing: 1.5,
              fontSize: SizeConfig.safeBlockHorizontal*8,
            ),
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal*20),
          Form(
            key: _loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*2, 0.0, SizeConfig.safeBlockHorizontal*2),
                  child: Text(
                    'Username',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff222A35),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.5,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*6),
                  child: TextFormField(
                    controller: _txtUserNameController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    style: new TextStyle(
                      color: Color(0xff222A35),
                      fontSize: 25.0,
                    ),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Color(0xff222A35),
                      ),
                      hintText: 'Enter your user name',
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal*4, 
                        color: Color(0xff222A35),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      loginData.username = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*2, 0, SizeConfig.safeBlockHorizontal*2),
                  child: Text(
                    'Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff222A35),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Californian FB',
                      letterSpacing: 1.5,
                      fontSize: SizeConfig.safeBlockHorizontal*6,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*13, SizeConfig.safeBlockHorizontal*6),
                  child: TextFormField(
                    controller: _txtPasswordController,
                    obscureText: true,
                    textAlign: TextAlign.start,
                    style: new TextStyle(
                      color: Color(0xff222A35),
                      fontSize: 25.0,
                    ),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.keyboard,
                        color: Color(0xff222A35),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal*4, 
                        color: Color(0xff222A35),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      loginData.password = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal*20, SizeConfig.safeBlockHorizontal*2, SizeConfig.safeBlockHorizontal*20, 0.0),
                  child: RaisedButton(
                    child: Text("Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Californian FB',
                        letterSpacing: 1.5,
                        fontSize: SizeConfig.safeBlockHorizontal*6,
                      ),
                    ),
                    color: Color(0xff222A35),
                    onPressed: () {
                      if (_loginFormKey.currentState.validate()) {
                        _loginFormKey.currentState.save();
                        LoginPageController().onLoginButtonPress(context, loginData);
                      }
                    }
                  ),
                ),
              ]
            )
          ),
        ],
      ),
    );

    return loginPageBody;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: null,
        body: _createLoginPageBody(context),
        bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}