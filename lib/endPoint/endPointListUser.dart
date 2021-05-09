import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loginapp/models/modelUser.dart';

Future endPointListUser(BuildContext context) async {
  String url = 'https://jsonplaceholder.typicode.com/users/';
  final response = await http.get(url);

  int statusCode = response.statusCode;

  var user = jsonDecode(response.body);

  List jsonResponse = user as List;

  return jsonResponse.map((job) => new modelUsers.fromJson(job)).toList();
}
