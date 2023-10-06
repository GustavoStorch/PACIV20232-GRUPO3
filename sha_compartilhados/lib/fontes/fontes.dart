import 'package:flutter/material.dart';

abstract class Fontes {
  static TextStyle getMontserrat({
    double? fontSize,
    Color? cor,
    double? latterSpacing,
  }) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      color: cor,
      letterSpacing: latterSpacing,
    );
  }
}
