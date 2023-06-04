import 'package:flutter/widgets.dart';

Size findRenderSize(GlobalKey key) {
  try {
    final targetBox = key.currentContext?.findRenderObject() as RenderBox;
    return targetBox.size;
  } catch (e) {
    return const Size(0, 0);
  }
}

Offset findRenderOffset(GlobalKey key) {
  try {
    final targetBox = key.currentContext?.findRenderObject() as RenderBox;
    final targetOffset = targetBox.localToGlobal(Offset.zero);
    return targetOffset;
  } catch (e) {
    return const Offset(0, 0);
  }
}
