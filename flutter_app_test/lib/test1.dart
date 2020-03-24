import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'Favorite Widget Demo',
        theme: ThemeData(primaryColor: Colors.yellow),
        home: MyHome(title: 'Flutter Demo Home Page')
    );
  }
}

class MyHome extends StatefulWidget {
  final String title;

  MyHome({Key key, this.title}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<MyHome> {

  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
      } else {
        _favoriteCount += 1;
      }
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
              child: IconButton(
                icon: (_isFavorited ? Icon(Icons.star) : Icon(
                    Icons.star_border)),
                color: Colors.blueAccent,
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              width: 18,
              child: new Container(
                child: new Text('$_favoriteCount'),
              ),
            )
          ],
        ),
      ),

    );
  }
}


