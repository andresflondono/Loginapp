import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loginapp/endPoint/endPointListUser.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/utils/color.dart';

import 'package:loginapp/utils/style.dart';
import 'package:loginapp/utils/utils.dart';
import 'package:loginapp/widget/card/cardItemUser.dart';
import 'package:loginapp/widget/widget.dart';

class screenDetails extends StatefulWidget {
  screenDetails({Key key, this.data}) : super(key: key);

  final modelUsers data;

  @override
  _screenDetailsState createState() => _screenDetailsState();
}

class _screenDetailsState extends State<screenDetails> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      // margin: EdgeInsets.only(left: 20,right: 20),
      child: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [colorPrimary, colorSecondary])),
                      child: Container(
                        width: double.infinity,
                        height: 350.0,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {

                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        child: widgetImage(
                                                "assets/images/profile.png",
                                                200,
                                                200),
                                      ))),
                              SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              AppUtils().back(context);
                            },
                            child: widgetCircle(Icons.arrow_back_ios)),
                        Expanded(child: SizedBox()),
                        GestureDetector(
                            onTap: () {

                            },
                            child: widgetCircle(Icons.edit))
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.name,
                      style: estiloTexto3(39, colorText, true),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.data.name + ": ",
                          style: estiloTexto3(19, colorText, false),
                        ),
                        Text(
                          widget.data.website,
                          style: estiloTexto3(19, colorText, false),
                        ),
                        Expanded(child: spacing(0, 0)),
                      ],
                    )
                  ],
                ),
              ),
              itemProfile(AppLocalizations.of(context).city, widget.data.phone),
              itemProfile(AppLocalizations.of(context).web, widget.data.website),
              itemProfile(AppLocalizations.of(context).email, widget.data.email),
              itemProfile(AppLocalizations.of(context).company, widget.data.listCompany.name),
              itemProfile(
                  AppLocalizations.of(context).slogan, widget.data.listCompany.catchPhrase),
              itemProfile(AppLocalizations.of(context).slogan, widget.data.listCompany.bs),
              itemProfile(AppLocalizations.of(context).city, widget.data.listAddress.city),
              itemProfile(AppLocalizations.of(context).suite, widget.data.listAddress.suite),
              itemProfile(AppLocalizations.of(context).sreet, widget.data.listAddress.street),
              itemProfile(AppLocalizations.of(context).zipCode, widget.data.listAddress.zipcode),
              itemProfile(
                  AppLocalizations.of(context).location,
                  "Lat: " +
                      widget.data.listAddress.listGeo.lat +
                      "Long: " +
                      widget.data.listAddress.listGeo.lng)
            ],
          ),

        ],
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
