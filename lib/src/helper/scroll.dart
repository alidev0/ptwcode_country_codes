import 'package:flutter/widgets.dart';

import 'render.dart';

void scrollIfNotVisible(BuildContext context, GlobalKey key) async {
  const duration = Duration(milliseconds: 400);
  await Future.delayed(duration);

  if (!context.mounted) return;

  final mQ = MediaQuery.of(context);
  final height = mQ.size.height;

  final bottomH = mQ.viewInsets.bottom + 64;
  final isInside = (height - bottomH) > findRenderOffset(key).dy;
  if (isInside) return;

  final unit = height / 10;
  final target = 1 - ((bottomH / unit) / 10);
  Scrollable.ensureVisible(context, alignment: target, duration: duration);
}
