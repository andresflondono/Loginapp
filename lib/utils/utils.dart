import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:loginapp/generated/l10n.dart';
class AppUtils {
  back(BuildContext context) {
    Navigator.pop(context);
  }



  decorationTextfield(String text) {
    return InputDecoration(
        border: InputBorder.none,
        labelText: text,
        hintStyle: TextStyle(
            color: Colors.grey[400]));
  }

  validatorTextfield(String value, BuildContext context) {
    if (value.isEmpty) {
      return AppLocalizations
          .of(context)
          .completefield;
    }
    return null;
  }


  message( String mensage, var context) {
    return Flushbar(
      // title: titulo,
      message: mensage,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.black,

    )
      ..show(context);
  }

  String convertText(String encoded) {
    List<int> bytes = encoded
        .toString()
        .codeUnits;
    return utf8.decode(bytes);
  }

}