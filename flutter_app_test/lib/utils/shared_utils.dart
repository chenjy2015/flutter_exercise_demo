import 'dart:convert';
import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef OnSet<T>(T value);
typedef OnGet<T>(T value);

class SharedUtil {
  static set<T>(String key, T value, OnSet onSet) async {
    Future<SharedPreferences> future = SharedPreferences.getInstance();
    future.then((prefs) {
      prefs.setString(key, jsonEncode(value));
      onSet(value);
    }).catchError((_) {
      print("catchError");
    });
  }

  static get<T>(String key, OnGet<T> onGet) {
    Future<SharedPreferences> future = SharedPreferences.getInstance();
    future.then((prefs) {
      if(prefs.get(key) != null) {
        onGet(json.decode(prefs.get(key))[key]);
      }else{
        onGet(null);
      }
    }).catchError((error) {
      print(error);
    });
  }
}
