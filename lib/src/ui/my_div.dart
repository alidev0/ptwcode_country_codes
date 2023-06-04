import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'my_divider.dart';

enum _Type {
  black,
  black16,

  grey,
  grey16,
  grey32,
  grey40,

  greyLight,
  greyLight16,
  greyLight48,
}

class MyDiv extends StatelessWidget {
  const MyDiv.black({super.key}) : _type = _Type.black;
  const MyDiv.black16({super.key}) : _type = _Type.black16;

  const MyDiv.grey({super.key}) : _type = _Type.grey;
  const MyDiv.grey16({super.key}) : _type = _Type.grey16;
  const MyDiv.grey32({super.key}) : _type = _Type.grey32;
  const MyDiv.grey40({super.key}) : _type = _Type.grey40;

  const MyDiv.greyLight({super.key}) : _type = _Type.greyLight;
  const MyDiv.greyLight16({super.key}) : _type = _Type.greyLight16;
  const MyDiv.greyLight48({super.key}) : _type = _Type.greyLight48;

  final _Type _type;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    Color color;
    double height;

    switch (_type) {
      case _Type.black:
        color = t.color.black;
        height = 0.5;
        break;
      case _Type.black16:
        color = t.color.black;
        height = 16;
        break;
      case _Type.grey:
        color = t.color.grey;
        height = 0.5;
        break;
      case _Type.grey16:
        color = t.color.grey;
        height = 16;
        break;
      case _Type.grey32:
        color = t.color.grey;
        height = 32;
        break;
      case _Type.grey40:
        color = t.color.grey;
        height = 40;
        break;
      case _Type.greyLight:
        color = t.color.greyLight;
        height = 0.5;
        break;
      case _Type.greyLight16:
        color = t.color.greyLight;
        height = 16;
        break;
      case _Type.greyLight48:
        color = t.color.greyLight;
        height = 48;
        break;
    }

    return MyDivider(color: color, height: height);
  }
}
