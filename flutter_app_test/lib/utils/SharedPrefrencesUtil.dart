
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesUtil{

  static set<T>(String key, T value){
    SharedPreferences prefs =  SharedPreferences.getInstance() as SharedPreferences;
    json.encode(value);
    prefs.setString(key, value);
  }

  static get<T>(String key){

  }

}