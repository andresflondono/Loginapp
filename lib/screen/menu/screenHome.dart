import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:loginapp/data/networking/endPointApi.dart';
import 'package:loginapp/endPoint/endPointListUser.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/redux/home/home_actions.dart';
import 'package:loginapp/redux/home/store.dart';
import 'package:loginapp/utils/color.dart';

import 'package:loginapp/widget/card/cardItemUser.dart';

class screenHome  extends KFDrawerContent {


  @override
  _screenHomeState createState() => _screenHomeState();
}

class _screenHomeState extends State<screenHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: new PreferredSize(
          child: new Container(
            padding:
                new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: new Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
              child: new Text(
                AppLocalizations.of(context).appname,
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [
                  colorPrimary,
                  colorSecondary,
                ]),
                boxShadow: [
                  new BoxShadow(
                    color: colorSecondary,
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
          preferredSize: new Size(MediaQuery.of(context).size.width, 170.0),
        ),
        body: Container(
          //margin: EdgeInsets.only(left: 20,right: 20),
          child: FutureBuilder(
            future: endPointListUser(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<modelUsers> data = snapshot.data;
                if (data.length == 0) {
                  return Container(
                      margin: EdgeInsets.only(left: 20), child: Text("no"));
                } else {
                  return ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return cardItemUser(context, data[index],index);
                      });
                }
                print("resultados" + data.length.toString());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

}
