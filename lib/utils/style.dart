import 'package:flutter/material.dart';

estiloTexto(var color, double size) {
  return TextStyle(color: color, fontSize: size);
}

estiloTexto3(double size, var color, bool bold) {
  return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold != true ? FontWeight.normal : FontWeight.bold);
}

estiloTexto5(double size, var color, bool bold) {
  return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold != true ? FontWeight.normal : FontWeight.bold);
}

estiloTexto2(double size, var color, bool bold) {
  return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold != true ? FontWeight.normal : FontWeight.bold,
      letterSpacing: 2.0);
}
