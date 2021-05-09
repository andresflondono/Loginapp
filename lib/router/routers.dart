import 'package:flutter/material.dart';
import 'package:loginapp/screen/auth/login/loginPage.dart';
import 'package:loginapp/screen/home/homePage.dart';

const String homeRoute = 'home';
const String detailRoute = 'detail';
const String loginRoute = "login";


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => loginPageState ());

      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => MainWidget(),
        );



      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
