import 'dart:async';

import 'package:loginapp/data/networking/endPointApi.dart';
import 'package:loginapp/redux/home/home_middleware.dart';
import 'package:loginapp/redux/home/home_state.dart';
import 'package:loginapp/redux/login/login_middleware.dart';

import 'package:flutter/material.dart';
import 'package:loginapp/redux/login/login_state.dart';

import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'app/app_reducer.dart';
import 'app/app_state.dart';


@immutable
class AppStateCheckoutSlit {
  final PostsStateLogin postsState;
  final PostsStateHome postsStateHome;
  AppStateCheckoutSlit({
    @required this.postsState,

    @required this.postsStateHome,
  });

  AppStateCheckoutSlit copyWith({
    PostsStateLogin postsState,
    PostsStateHome postsStateHome,
  }) {
    return AppStateCheckoutSlit(
      postsState: postsState ?? this.postsState,
      postsStateHome: postsStateHome ?? this.postsStateHome,
    );
  }
}

Future<Store<AppState>> createStore(
    {endPointApi api, Persistor<AppState> persistor}) async {
  var prefs = await SharedPreferences.getInstance();
  AppState initialState;

  try {
    initialState = await persistor.load();
  } catch (e) {
    initialState = AppState.initial();
  }

  Store<AppState> store = Store(appReducer,
      initialState: initialState ?? AppState.initial(),
      distinct: true,
      middleware: [

        LoginMiddleware(api),
        HomeMiddleware(api),

        //  persistor.createMiddleware(),
      ]);
  api.loadStore(store);
  return store;
}
