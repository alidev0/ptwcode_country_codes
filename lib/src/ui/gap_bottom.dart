import 'dart:math';
import 'package:flutter/widgets.dart';
import 'gap.dart';

class GapBottom extends StatelessWidget {
  const GapBottom({super.key, this.min = 24}) : isBanner = false;

  const GapBottom.banner({super.key})
      : min = 24,
        isBanner = true;

  final bool isBanner;
  final double min;

  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context);
    var value = 0.0;

    if (isBanner) {
      value = mQ.padding.bottom;
    }

    if (!isBanner) {
      value = max(mQ.padding.bottom, mQ.viewInsets.bottom);
      value = max(value, min);
    }

    // print('==> 1: ${mQ.padding.bottom}');
    // print('==> 2: ${mQ.viewInsets.bottom}');

    return Gap(value);
  }
}
