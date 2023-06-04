import 'package:flutter/widgets.dart';

import 'my_colors.dart';

class MyTextStyles {
  MyTextStyles(this.color);

  final MyColors color;

  TextStyle get def400s08Black => _def400s8.copyWith(color: color.black);

  TextStyle get def400s12Black => _def400s12.copyWith(color: color.black);
  TextStyle get def400s12White => _def400s12.copyWith(color: color.white);

  TextStyle get def400s13Black => _def400s13.copyWith(color: color.black);

  TextStyle get def400s14Grey => _def400s14.copyWith(color: color.grey);

  TextStyle get def400s15Black => _def400s15.copyWith(color: color.black);
  TextStyle get def400s15Grey => _def400s15.copyWith(color: color.grey);
  TextStyle get def400s15White => _def400s15.copyWith(color: color.white);

  TextStyle get def400s16Black => _def400s16.copyWith(color: color.black);
  TextStyle get def400s16Grey => _def400s16.copyWith(color: color.grey);
  TextStyle get def400s16White => _def400s16.copyWith(color: color.white);

  TextStyle get def400s17Grey => _def400s17.copyWith(color: color.grey);
  TextStyle get def400s17Black => _def400s17.copyWith(color: color.black);
  TextStyle get def400s17Blue => _def400s17.copyWith(color: color.blue);
  TextStyle get def400s17White => _def400s17.copyWith(color: color.white);

  TextStyle get def400s18Black => _def400s18.copyWith(color: color.black);

  TextStyle get def400s19Black => _def400s19.copyWith(color: color.black);
  TextStyle get def400s19White => _def400s19.copyWith(color: color.white);

  TextStyle get def400s23Black => _def400s23.copyWith(color: color.black);
  TextStyle get def400s30Black => _def400s30.copyWith(color: color.black);

  TextStyle get def900s19Black => _def900s19.copyWith(color: color.black);

  /// _noDecor
  TextStyle get _noDecor => const TextStyle(decoration: TextDecoration.none);

  /// _default
  TextStyle get _default => _noDecor.copyWith(fontFamily: 'Roboto');

  /// _default w400
  TextStyle get _def400 => _default.copyWith(fontWeight: FontWeight.w400);
  TextStyle get _def400s8 => _def400.copyWith(fontSize: 8);
  TextStyle get _def400s12 => _def400.copyWith(fontSize: 12);
  TextStyle get _def400s13 => _def400.copyWith(fontSize: 13);
  TextStyle get _def400s14 => _def400.copyWith(fontSize: 14);
  TextStyle get _def400s15 => _def400.copyWith(fontSize: 15);
  TextStyle get _def400s16 => _def400.copyWith(fontSize: 16);
  TextStyle get _def400s17 => _def400.copyWith(fontSize: 17);
  TextStyle get _def400s18 => _def400.copyWith(fontSize: 18);
  TextStyle get _def400s19 => _def400.copyWith(fontSize: 19);
  TextStyle get _def400s23 => _def400.copyWith(fontSize: 23);
  TextStyle get _def400s30 => _def400.copyWith(fontSize: 30);

  TextStyle get _def900 => _default.copyWith(fontWeight: FontWeight.w900);
  TextStyle get _def900s19 => _def900.copyWith(fontSize: 18);
}
