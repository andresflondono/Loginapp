// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class AppLocalizations {
  AppLocalizations();
  
  static AppLocalizations current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      AppLocalizations.current = AppLocalizations();
      
      return AppLocalizations.current;
    });
  } 

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `loginapp`
  String get appname {
    return Intl.message(
      'loginapp',
      name: 'appname',
      desc: '',
      args: [],
    );
  }

  /// `Celular`
  String get phone {
    return Intl.message(
      'Celular',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Correo`
  String get email {
    return Intl.message(
      'Correo',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Compañia`
  String get company {
    return Intl.message(
      'Compañia',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Eslogan`
  String get slogan {
    return Intl.message(
      'Eslogan',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Ciudad`
  String get city {
    return Intl.message(
      'Ciudad',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Suite`
  String get suite {
    return Intl.message(
      'Suite',
      name: 'suite',
      desc: '',
      args: [],
    );
  }

  /// `Sreet`
  String get sreet {
    return Intl.message(
      'Sreet',
      name: 'sreet',
      desc: '',
      args: [],
    );
  }

  /// `Zip`
  String get zipCode {
    return Intl.message(
      'Zip',
      name: 'zipCode',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación`
  String get location {
    return Intl.message(
      'Ubicación',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Pagina web`
  String get web {
    return Intl.message(
      'Pagina web',
      name: 'web',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Salir`
  String get signout {
    return Intl.message(
      'Salir',
      name: 'signout',
      desc: '',
      args: [],
    );
  }

  /// `Ha ocurrido un error`
  String get errornotification {
    return Intl.message(
      'Ha ocurrido un error',
      name: 'errornotification',
      desc: '',
      args: [],
    );
  }

  /// `Campo requerido`
  String get completefield {
    return Intl.message(
      'Campo requerido',
      name: 'completefield',
      desc: '',
      args: [],
    );
  }

  /// `Usuario`
  String get user {
    return Intl.message(
      'Usuario',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `*********`
  String get password {
    return Intl.message(
      '*********',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Datos incorrectos`
  String get incorrect {
    return Intl.message(
      'Datos incorrectos',
      name: 'incorrect',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}