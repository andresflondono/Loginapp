import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:loginapp/app/app_settings.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/redux/app/app_state.dart';
import 'package:loginapp/redux/home/store.dart';
import 'package:loginapp/redux/login/store.dart';
import 'package:loginapp/router/routers.dart';
import 'package:loginapp/screen/auth/login/loginPage.dart';
import 'package:loginapp/screen/menu/screenHome.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';



import 'package:redux/redux.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'generated/l10n.dart';
Future<void> main() async {
  await ReduxLogin.init();
  await ReduxHome.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),

        ],


        debugShowCheckedModeBanner: false,
        title: AppSettings.appDisplayName,
        theme: ThemeData(
          fontFamily: "Manrope",
          primarySwatch: Colors.blue,
          //  visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        home:
        StoreProvider<AppStateHome>(
            store: ReduxHome.store,
            child: StoreConnector<AppStateHome, dynamic>(
              //distinct: true,

                converter: (store) => ReduxHome.store,
                onInit: (store) {

                },

                builder: (context, value) {
                  return loginPageState();
                }))
    );
  }
}

