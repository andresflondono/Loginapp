import 'package:flutter/material.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/screen/menu/screenDetails.dart';

routesScreenDetails(var context, modelUsers data) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => screenDetails(
              data: data,
            )),
  );
}
