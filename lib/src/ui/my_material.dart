import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(color: color ?? transparentColor, child: child);
  }
}
