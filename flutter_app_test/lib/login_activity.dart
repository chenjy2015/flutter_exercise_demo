import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapptest/constant.dart';
import 'package:flutterapptest/decoration_utils.dart';
import 'package:flutterapptest/style/text_styles.dart';

import 'global.dart';
import 'utils/shared_utils.dart';

typedef void OnLoginClick();


class LoginStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginStateWidget> {
  String account;
  String password;
  OnLoginClick loginClick;

  bool checkIsOK() {
    return account != null && password != null;
  }

  void _onAccountChanged(String content) {
    account = content;
    print("_onAccountChanged $content");
  }

  void _onPasswordChanged(String content) {
    password = content;
    print("_onPasswordChanged $content");
  }

  void _doLogin() {
    SharedUtil.set(Constant.KEY_ACCOUNT, account, (account) {
      print('start login set account : $account');
    });
    SharedUtil.set(Constant.KEY_PASSWORD, password, (password) {
      print('start login set password : $password');
    });
    SharedUtil.get(Constant.KEY_ACCOUNT, (account) {
      print('start login get account : $account');
    });
    SharedUtil.get(Constant.KEY_PASSWORD, (password) {
      print('start login get password : $password');
    });
  }

  @override
  Widget build(BuildContext context) {
    Global.context = context;
    // TODO: implement build
    return new Scaffold(
//      appBar: AppBar(
//        title: new Text('Login'),
//        leading: new Icon(Icons.menu),
//      ),
      body: Container(
        width: double.infinity,
        color: Colors.red[500],
        height: double.infinity,
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: new LoginLogo(),
              flex: 0,
            ),
            new Expanded(
              child: new LoginAccount(onChanged: _onAccountChanged),
              flex: 0,
            ),
            new Expanded(
              child: new LoginPassword(
                onChanged: _onPasswordChanged,
              ),
              flex: 0,
            ),
            new Expanded(
              child: new LoginButton(onLoginClick: _doLogin),
              flex: 0,
            ),
            new Expanded(
              child: LoginRegister(),
              flex: 0,
            )
          ],
        ),
      ),
    );
  }
}

class LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Text(
        '领筑',
        style: new TextStyle(fontSize: 46.0, color: Colors.white),
      ),
      margin: EdgeInsets.all(60.0),
    );
  }
}

class LoginAccount extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const LoginAccount({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(16.0, 36.0, 16.0, 16.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                '账号',
                style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
            ),
            new Container(
              child: new TextField(
                style: TextStyles.getLoginTextStyle(),
                maxLines: 1,
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                onChanged: onChanged,
                decoration: DecorationUtils.getLoginAccountInputDecoration(),
              ),
              alignment: Alignment.topLeft,
            ),
          ],
        ));
  }
}

class LoginPassword extends StatelessWidget {
  const LoginPassword({Key key, this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(16.0, 36.0, 16.0, 16.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                '密码',
                style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
            ),
            new Container(
              child: new TextField(
                style: TextStyles.getLoginTextStyle(),
                maxLines: 1,
                cursorColor: Colors.white,
                keyboardType: TextInputType.visiblePassword,
                onChanged: onChanged,
                decoration: DecorationUtils.getLoginPasswordInputDecoration(),
              ),
              alignment: Alignment.topLeft,
            ),
          ],
        ));
  }
}

class LoginButton extends StatelessWidget {
  final OnLoginClick onLoginClick;

  LoginButton({Key key, this.onLoginClick}) : super(key: key);

  void _doLogin() {
    SharedUtil.get("user", (value) {
      print('start login get User : $value');
    });
    SharedUtil.set("user", 123, (value) {
      print('start login set User : $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new IconButton(
          icon: Image.asset(
            Constant.LOGIN_BUTTON_LOGO,
            fit: BoxFit.cover,
//            width: 120,
//            height: 120,
          ),
          onPressed: onLoginClick),
      width: 90,
      height: 90,
      margin: EdgeInsets.all(16.0),
    );
  }
}

class LoginRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
                margin: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0),
                child: new Text(
                  '忘记密码',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
            new Container(
                child: new Text('|',
                    style: new TextStyle(color: Colors.white, fontSize: 14))),
            new Container(
                margin: EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0),
                child: new Text(
                  '新用户注册',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
        new Container(
          margin: EdgeInsets.all(18.0),
          child: new Text(
            '© 深圳智慧建设科技有限公司',
            style: new TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginStateWidget(),
    );
  }
}
