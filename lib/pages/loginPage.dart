import 'package:flutter/material.dart';
import 'package:sure_count_app/controllers/loginPageController.dart';
import 'package:sure_count_app/pages/helpers/commonUIHelper.dart';
import 'package:sure_count_app/pages/helpers/loginPageUIHelper.dart';
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
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController _txtUserNameController = TextEditingController(text: 'Admin');
  TextEditingController _txtPasswordController = TextEditingController(text: 'admin');

 /* void initState() {

  }

  void dispose() {
    // other dispose methods
    _txtUserNameController.dispose();
    _txtPasswordController.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: null,
        body: LoginPageUIHelper().createLoginPageBody(context, _loginFormKey, _txtUserNameController, _txtPasswordController),
        bottomNavigationBar: CommonUIHelper().createPageBottomBar(),
    );
  }
}