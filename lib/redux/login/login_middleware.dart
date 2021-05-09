import 'dart:async';

import 'package:loginapp/data/networking/endPointApi.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/redux/app/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/router/routers.dart';
import 'package:loginapp/utils/utils.dart';
import 'package:redux/redux.dart';

import 'login_actions.dart';


class LoginMiddleware extends MiddlewareClass<AppState> {
  LoginMiddleware(this.api);

  final endPointApi api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is LoginAction) {
      await _Login(next, action, store);
    }

  }

  // AlertWidget alertWidget = new AlertWidget();

  Future<void> _Login(
      NextDispatcher next, LoginAction action, Store<AppState> store) async {

    try {
      if (action.password == "1234567" &&
          action.email == "admin") {
        Navigator.pushNamedAndRemoveUntil(action.context, homeRoute, (r) => false);
      } else {
        AppUtils().message(AppLocalizations.of(action.context).incorrect,action.context);



      }


    } catch (e) {
      print(e);
    }
  }


}
