import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginapp/app/app_colors.dart';
import 'package:loginapp/utils/color.dart';
import 'package:loginapp/utils/style.dart';

Widget spacing(double heigth, double widgth) {
  return SizedBox(
    height: heigth,
    width: widgth,
  );
}
Widget butttonText(String text){
  return Container(
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          AppColors.primaryColor,
          AppColors.secondaryColor,
        ])),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget itemProfile(String title1, String title2) {
  return ListTile(
    title: Text(title1, style: estiloTexto3(17, Colors.grey, true)),
    leading: Container(
      height: 50,
      width: 50,
      child: Image.asset(
        "assets/images/menu.png",
        height: 50,
        width: 50,
      ),
    ),
    subtitle: Text(title2, style: estiloTexto3(21, colorText, false)),
  );
}

Widget widgetCircle(var icon) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Icon(
      icon,
      color: colorText,
    ),
  );
}

Widget widgetImage(String url, double heigth, double widgth) {
  return Image.asset(url, height: heigth);
}
