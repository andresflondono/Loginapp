import 'dart:async';

import 'package:loginapp/app/app_settings.dart';
import 'package:loginapp/data/networking/endPointApi.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/redux/app/app_state.dart';
import 'package:loginapp/redux/home/home_actions.dart';
import 'package:loginapp/redux/home/home_state.dart';
import 'package:loginapp/redux/login/store.dart';
import 'package:loginapp/utils/utils.dart';

import 'package:redux/redux.dart';

//import '../app/app_state.dart';

class HomeMiddleware extends MiddlewareClass<AppState> {
  HomeMiddleware(this.api);

  final endPointApi api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is HomeAction) {
      await _listUser(next, action, store);
    }

  }

  Future<void> _listUser(
      NextDispatcher next, HomeAction action, Store<AppState> store) async {
    print("list");
    try {
    MyHttpResponse response = await api.listUser(
        action.context
      );


      switch (response.statusCode) {
        case 200:

          List jsonResponse = response.data as List;

          ReduxLogin.store.dispatch(
              SetPostsStateActionHome(PostsStateHome(data:jsonResponse.map((job) => new modelUsers.fromJson(job)).toList() )));
        //  return jsonResponse.map((job) => new modelUsers.fromJson(job)).toList();


          break;
        case AppSettings.statusCodeError:

          AppUtils().message( response.message,action.context);


          break;
        default:
          AppUtils().message( response.message,action.context);
      }
    } catch (e) {
      print(e);
    }
  }
}
