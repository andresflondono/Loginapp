import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/router/routers.dart';
import 'package:loginapp/screen/menu/screenHome.dart';
import 'package:loginapp/utils/circular_image.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  KFDrawerController _drawerController;

  menu() {
    return _drawerController = KFDrawerController(
      initialPage: screenHome(),
      items: [
        KFDrawerItem.initWithPage(
          text: Text(AppLocalizations.of(context).appname,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, letterSpacing: 1.2)),
          icon: Icon(Icons.alarm, color: Colors.white),
          page: screenHome(),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    menu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: CircularImage(
                      NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Admin",

                      ),
                    ],
                  ),
                ],
              )),
        ),
        footer: KFDrawerItem(
          text: Text(
            AppLocalizations.of(context).signout,
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.input,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
               context, loginRoute, (r) => false);
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff0B547B), Color(0xff1B8DC5)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
