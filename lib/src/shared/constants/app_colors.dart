import 'package:flutter/widgets.dart';

class AppColors {
  static const Color pink = Color.fromRGBO(245, 72, 127, 1);
  static const Color green = Color.fromRGBO(88, 179, 104, 1);
  static const Color purple = Color.fromRGBO(52, 48, 144, 1);
  static const Color cyan = Color.fromRGBO(68, 194, 253, 1);
  static const Color yellow = Color.fromRGBO(250, 199, 54, 1);

  static const blueGradient = LinearGradient(
    colors: <Color>[
      cyan,
      purple
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );
}
