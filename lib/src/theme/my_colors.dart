import 'package:flutter/widgets.dart';

const myColors = MyColors();

class MyColors {
  const MyColors();

  final Color black = const Color(0xFF000000);
  final Color white = const Color(0xFFFFFFFF);

  final Color blue = const Color(0xFF2196F3);
  final Color green = const Color(0xFF47DA8C);
  final Color red = const Color(0xFFFF0000);

  final Color greenDark = const Color(0xFF023020);
  final Color greenApple = const Color(0xff4caf50);

  final Color blueYankess = const Color(0xFF27293F);
  final Color greenDeepMoss = const Color(0xFF30604B);
  final Color greenOcean = const Color(0xFF47DA8C);
  final Color greenSpanish = const Color(0xFF0E934D);

  final Color grey = const Color(0xFF808080);
  final Color greyLight = const Color(0xFFD3D3D3);
  final Color purple = const Color(0xFF495484);
  final Color purpleDark = const Color(0xFF2D396B);

  Color get barrier => black.withOpacity(0.6);
}
