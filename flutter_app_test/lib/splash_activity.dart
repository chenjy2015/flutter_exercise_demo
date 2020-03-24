import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapptest/constant.dart';

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
      home: ImageHome(),
    );
  }
}

class ImageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//        appBar: AppBar(
//          title: new Text('Splash'),
//          leading: new Icon(Icons.menu),
//          actions: <Widget>[
//            new Icon(Icons.search)
//          ],
//        ),
        body: Container(
            color: Colors.red[500],
            padding: EdgeInsets.fromLTRB(37.5, 109.0, 37.5, 44.0),
            width: double.infinity,
            height: double.infinity,
            child: new Column(
              children: <Widget>[
                Image.asset(
                  Constant.SPLASH_LOGO,
                  fit: BoxFit.cover,
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 26.0, 0.0, 0.0),
                  child: new Text(
                    '领筑',
                    style: new TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                  child: new Text(
                    '工程产业互联网',
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                new Container(
                    margin: EdgeInsets.fromLTRB(0.0, 26.0, 0.0, 0.0),
                    child: new Text(
                      '© 深圳智慧建设科技有限公司',
                      style: new TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontStyle: FontStyle.normal),
                    )),
              ],
            )));
  }
}
