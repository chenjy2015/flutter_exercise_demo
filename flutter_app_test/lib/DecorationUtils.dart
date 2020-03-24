import 'package:flutter/material.dart';

import 'ColorUtils.dart';

class DecorationUtils {
  static InputDecoration getLoginAccountInputDecoration() {
    return getLoginInPutDecoration('请输入用户名/手机/邮箱');
  }

  static InputDecoration getLoginPasswordInputDecoration() {
    return getLoginInPutDecoration('请输入登录密码');
  }

  static InputDecoration getLoginInPutDecoration(String hint) {
    return InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
        focusedBorder: new UnderlineInputBorder(
            borderSide: new BorderSide(
                color: ColorUtils.getGeneralInputColor(), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        enabledBorder: new UnderlineInputBorder(
            borderSide: new BorderSide(
                color: ColorUtils.getGeneralInputColor(), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        hintText: hint,
//                    labelText: '请输入登录密码)',
        hintStyle: new TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
//                    helperText: '注；登录密码任意字符组成',
        helperStyle: new TextStyle(
          color: Colors.white70,
          fontStyle: FontStyle.italic,
          fontSize: 12.0,
        ));
  }
}
