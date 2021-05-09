import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/io_client.dart';
import 'package:loginapp/app/app_constants.dart';
import 'package:loginapp/app/app_settings.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/redux/app/app_state.dart';
import 'package:redux/redux.dart';

class endPointApi {
  endPointApi();

  Store<AppState> store;

  Future<void> loadStore(Store<AppState> store) async {
    this.store = store;
  }

  static const bool debug = AppSettings.debug;
  static const String version = AppSettings.version;
  static const String mnt = '';
  static const String baseUrl = AppSettings.debug
      ? 'https://jsonplaceholder.typicode.com/users/'
      : 'https://jsonplaceholder.typicode.com/users/';

  Future<MyHttpResponse> listUser(BuildContext context) async {
    MyHttpResponse response = await getRequest(baseUrl);
    return response;
/*
    switch (response.statusCode) {
      case AppSettings.statusCodeSuccess:
      //  var user = jsonDecode(response.data);

       return response;
        break;
      case AppSettings.statusCodeError:
        return response;

        break;
    }*/
  }
}

Future<MyHttpResponse> postRequest(Uri uri,
    {bool shouldRetry = true,
    Map jsonMap,
    Map additionalHeaders,
    bool mntFlag = true}) async {
  Map<String, String> headers = {
    // 'Authorization':
    //   "Bearer ${"" /*store.state.authState.initData.token*/ ?? ''}",
    'Content-Type': "application/json",
  };
  if (additionalHeaders != null) headers.addEntries(additionalHeaders.entries);
  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http2 = new IOClient(ioc);
  var response =
      await http2.post(uri, body: json.encode(jsonMap), headers: headers);

  var data = json.decode(utf8.decode(response.bodyBytes));
  return MyHttpResponse(response.statusCode, data,
      message: response.statusCode != 200 ? data[AppConstants.messageKey] : '');
}

Future<MyHttpResponse> getRequest(String uri,
    {bool shouldRetry = true, Map additionalHeaders}) async {
  Map<String, String> headers = {
    // 'Authorization':
    //   "Bearer ${"" /*store.state.authState.initData.token*/ ?? ''}",
    'Content-Type': "application/json",
  };
  if (additionalHeaders != null) headers.addEntries(additionalHeaders.entries);

  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http2 = new IOClient(ioc);
  var response = await http2.get(uri.replaceAll("%3F", "?"));
  print(uri.replaceAll("%3F", "?").toString());
  var data = json.decode(utf8.decode(response.bodyBytes));
  print(response.body);
  return MyHttpResponse(response.statusCode, data,
      message: response.statusCode != 200 ? data[AppConstants.messageKey] : '');
}

Future<MyHttpResponse> deleteRequest(
  Uri uri, {
  bool shouldRetry = true,
  Map additionalHeaders,
}) async {
  Map<String, String> headers = {
    // 'Authorization':
    //   "Bearer ${"" /*store.state.authState.initData.token*/ ?? ''}",
    'Content-Type': "application/json",
  };
  if (additionalHeaders != null) headers.addEntries(additionalHeaders.entries);

  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http2 = new IOClient(ioc);
  var response = await http2.get(uri, headers: headers);

  var data = json.decode(utf8.decode(response.bodyBytes));
  return MyHttpResponse(response.statusCode, data,
      message: response.statusCode != 200 ? data[AppConstants.messageKey] : '');
}

class MyHttpResponse {
  int statusCode;
  String message;
  dynamic data;

  MyHttpResponse(this.statusCode, this.data, {this.message});

  @override
  String toString() {
    return 'MyHttpResponse{statusCode: $statusCode, message: $message, data: $data}';
  }
}
