import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/models/modelUser.dart';
import 'package:loginapp/utils/color.dart';
import 'package:loginapp/utils/routes.dart';
import 'package:loginapp/utils/style.dart';
import 'package:loginapp/widget/widget.dart';

Widget cardItemUser(BuildContext context, modelUsers data,int index) {
  var color = [
    color5,
    color6,
  ];
  switch(index){
    case 1:
      color = [
  colorPrimary,
  colorSecondary,
  ];

      break;
    case 2:
      color = [
        color1,
        color2,
      ];

      break;
    case 3:
      color = [
        color3,
        color4,
      ];

      break;
    case 4:
      color = [
        color5,
        color6,
      ];

      break;
    case 5:
      color = [
        color7,
        color8,
      ];

      break;
    case 6:
      color = [
        color9,
        color10,
      ];

      break;
    case 7:
      color = [
        color11,
        color12,
      ];

      break;
    case 8:
      color = [
        color13,
        color14,
      ];

      break;
    case 9:
      color = [
        color15,
        color16,
      ];

      break;
  }
  return GestureDetector(
    onTap: () {
      routesScreenDetails(context, data);
    },
    child: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: new LinearGradient(colors:color),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 7.0,
                spreadRadius: 1.0,
              )
            ]),
        // height: 200,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacing(5, 0),
              Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 25,
                  )),
              Row(
                children: [
                  widgetImage("assets/images/profile.png", 71, 71),
                  spacing(0, 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       // width: 220,
                        child: Text(
                          data.name,
                          style: estiloTexto3(19, Colors.white, false),
                        ),
                      ),
                      Text(
                        data.username,
                        style: estiloTexto3(17, Colors.white, false),
                      ),
                    ],
                  )
                ],
              ),
              spacing(10, 0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.phone,
                    style: estiloTexto3(17, Colors.white, false),
                  ),
                  Text(
                    data.email,
                    style: estiloTexto3(17, Colors.white, false),
                  ),
                  spacing(15, 0),
                ],
              ),
            ],
          ),
        )),
  );
}
