import 'package:flutter/material.dart' as m;
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'gap.dart';
import 'my_paddings.dart';

void showExDialog({
  required BuildContext context,
  required String title,
  required String text,
}) {
  final t = Theme.of(context);

  showMyDialog(
    context: context,
    builder: (context) {
      Widget current = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: t.text.def900s19Black),
          const Gap(8),
          Text(text, style: t.text.def400s15Black),
        ],
      );

      current = AllPadding(current, 16);
      final decor = BoxDecoration(
        color: t.color.white,
        borderRadius: BorderRadius.circular(16),
      );

      current = Container(decoration: decor, child: current);
      current = AllPadding(current, 8);
      return Center(child: current);
    },
  );
}

Future<T?> showMyDialog<T>({
  required BuildContext context,
  bool barrierDismissible = true,
  required Widget Function(BuildContext) builder,
  Color? barrierColor,
  bool useSafeArea = true,
  bool autoDispose = false,
  int duration = 2,
}) async {
  final color = barrierColor ?? const Color(0x8A000000);

  return await m.showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: color,
    useSafeArea: useSafeArea,
    builder: (context) {
      return _Dialog(
        duration: duration,
        autoDispose: autoDispose,
        child: builder(context),
      );
    },
  );
}

class _Dialog extends m.StatefulWidget {
  const _Dialog({
    required this.duration,
    required this.autoDispose,
    required this.child,
  });

  final int duration;
  final bool autoDispose;
  final Widget child;

  @override
  State<_Dialog> createState() => _DialogState();
}

class _DialogState extends State<_Dialog> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) => _buildCallback());
  }

  void _buildCallback() async {
    if (widget.autoDispose) {
      await Future.delayed(Duration(seconds: widget.duration));
      if (mounted) Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
