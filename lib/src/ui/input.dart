import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart';

import '../helper/scroll.dart';
import '../theme/app_colors.dart';
import '../theme/theme.dart';
import 'gap.dart';
import 'my_material.dart';

enum EndAction { done, next }

enum LabelBehaviour { auto, onTop }

class Input extends StatefulWidget {
  const Input({
    super.key,
    required this.ctrl,
    this.enabled = true,
    this.validate,
    this.hint,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.maxLines = 1,
    this.focusNode,
    this.leading,
    this.hasBorder = true,
    this.focusedBorderColor,
    this.enabledBorderColorEmpty,
    this.enabledBorderColorNotEmpty,
    this.endAction = EndAction.done,
    this.bgColor,
    this.isBorderUnderline = false,
    this.textColor,
    this.isPsw = false,
    this.label,
    this.labelBehaviour = LabelBehaviour.onTop,
    this.enableInteractiveSelection = true,
    this.errorText,
    this.onChange,
    this.onTap,
  });

  final TextEditingController ctrl;
  final bool enabled;
  final void Function()? validate;
  final String? hint;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final int? maxLength;
  final int maxLines;
  final FocusNode? focusNode;
  final Widget? leading;
  final bool hasBorder;
  final Color? focusedBorderColor;
  final Color? enabledBorderColorEmpty;
  final Color? enabledBorderColorNotEmpty;
  final EndAction endAction;
  final Color? bgColor;
  final bool isBorderUnderline;
  final Color? textColor;
  final bool isPsw;
  final String? label;
  final LabelBehaviour labelBehaviour;
  final bool enableInteractiveSelection;
  final String? errorText;
  final Function(String)? onChange;
  final Function()? onTap;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late FocusNode _focus;
  final _key = GlobalKey();
  var _isSecure = true;

  @override
  void initState() {
    final focusNode = widget.focusNode;
    final validate = widget.validate ?? () {};
    _focus = (focusNode == null) ? FocusNode() : focusNode;

    _focus.addListener(() {
      if (mounted) setState(() {});

      final hasFocus = _focus.hasFocus;
      if (hasFocus && mounted) scrollIfNotVisible(context, _key);

      if (widget.ctrl.text.isNotEmpty) if (!hasFocus) validate();
    });

    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(() {});
    widget.ctrl.removeListener(() {});
    super.dispose();
  }

  bool isMounted() => mounted;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final grey = t.color.grey;
    final green = t.color.green;
    final blue = t.color.blue;
    final red = t.color.red;

    final def400s16Black = t.text.def400s16Black;

    final leading = widget.leading;
    final label = widget.label;
    final isPsw = widget.isPsw;
    final bgColor = widget.bgColor;
    final focusedBorderColor = widget.focusedBorderColor;
    final enabledBorderColorEmpty = widget.enabledBorderColorEmpty;
    final enabledBorderColorNotEmpty = widget.enabledBorderColorNotEmpty;
    final textColor = widget.textColor;

    Widget pswIcon = GestureDetector(
      onTap: () => setState(() => _isSecure = !_isSecure),
      child: const Icon(m.Icons.visibility),
    );

    m.TextInputAction textInputAction(EndAction action) {
      switch (action) {
        case EndAction.done:
          return m.TextInputAction.done;
        case EndAction.next:
          return m.TextInputAction.next;
      }
    }

    m.FloatingLabelBehavior labelBehaviour(LabelBehaviour behaviour) {
      switch (behaviour) {
        case LabelBehaviour.auto:
          return m.FloatingLabelBehavior.auto;
        case LabelBehaviour.onTop:
          return m.FloatingLabelBehavior.always;
      }
    }

    m.OutlineInputBorder outlineInputBorder(Color color) {
      return m.OutlineInputBorder(
        borderSide: BorderSide(width: 4, color: color),
        borderRadius: BorderRadius.circular(16),
      );
    }

    m.UnderlineInputBorder underlineBorder(Color color) {
      return m.UnderlineInputBorder(
        borderSide: BorderSide(color: color, width: 2),
      );
    }

    final isEmpty = widget.ctrl.text.trim().isEmpty;
    final hasBorder = widget.hasBorder;
    final isBorderUnderline = widget.isBorderUnderline;

    final redUnderlineBorder = underlineBorder(red);
    final redOutlineInputBorder = outlineInputBorder(red);

    Widget current = m.TextField(
      key: _key,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      obscureText: isPsw && _isSecure,
      textInputAction: textInputAction(widget.endAction),
      textAlign: widget.textAlign,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      focusNode: _focus,
      enabled: widget.enabled,
      controller: widget.ctrl,
      keyboardType: widget.keyboardType,
      style: def400s16Black.copyWith(color: textColor),
      onChanged: widget.onChange,
      onTap: widget.onTap,
      decoration: m.InputDecoration(
        fillColor: bgColor,
        filled: bgColor != null,
        floatingLabelBehavior: labelBehaviour(widget.labelBehaviour),
        label: (label == null) ? null : Text(label, style: def400s16Black),
        suffixIcon: isPsw ? pswIcon : null,
        contentPadding: const EdgeInsets.all(16),
        border: m.InputBorder.none,
        focusedBorder: !hasBorder
            ? null
            : isBorderUnderline
            ? underlineBorder(focusedBorderColor ?? blue)
            : outlineInputBorder(focusedBorderColor ?? blue),
        enabledBorder: !hasBorder
            ? null
            : isEmpty
            ? isBorderUnderline
                  ? underlineBorder(enabledBorderColorEmpty ?? grey)
                  : outlineInputBorder(enabledBorderColorEmpty ?? grey)
            : isBorderUnderline
            ? underlineBorder(enabledBorderColorNotEmpty ?? green)
            : outlineInputBorder(enabledBorderColorNotEmpty ?? green),

        hintText: widget.hint,
        hintStyle: t.text.def400s16Grey.copyWith(color: textColor),
        counterText: '', // removes counter after setting maxLength
        errorText: widget.errorText,
        errorBorder: isBorderUnderline
            ? redUnderlineBorder
            : redOutlineInputBorder,
        focusedErrorBorder: isBorderUnderline
            ? redUnderlineBorder
            : redOutlineInputBorder,
      ),
    );

    current = MyMaterial(color: transparentColor, child: current);

    if (leading != null) {
      current = Expanded(child: current);
      current = Row(children: [leading, const Gap(12), current]);
    }

    return current;
  }
}
