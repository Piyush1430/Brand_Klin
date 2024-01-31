import 'package:flutter/material.dart';

class AppTheme {
  static Shader linerGradientShader = const LinearGradient(colors: <Color>[
    Color(0xFFEEA026),
    Colors.amber,
    Colors.amberAccent,
    Colors.red,
    Colors.redAccent
  ]).createShader(
    const Rect.fromLTWH(0.0, 0.0, 165.0, 80.0),
  );
}
