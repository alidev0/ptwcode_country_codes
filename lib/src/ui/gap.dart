import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Gap extends StatelessWidget {
  const Gap(this.lSize, {Key? key})
      : assert(lSize >= 0 && lSize < double.infinity),
        super(key: key);

  final double lSize;

  @override
  Widget build(BuildContext context) {
    final scrollableState = Scrollable.maybeOf(context);
    final axisDirect = scrollableState?.axisDirection;
    final fallTo = axisDirect == null ? null : axisDirectionToAxis(axisDirect);

    return _RawGap(lSize, fallTo: fallTo);
  }
}

class _RawGap extends LeafRenderObjectWidget {
  const _RawGap(this.lSize, {Key? key, this.fallTo})
      : assert(lSize >= 0 && lSize < double.infinity),
        super(key: key);

  final double lSize;
  final Axis? fallTo;

  @override
  RenderObject createRenderObject(BuildContext _) =>
      RenderGap(lSize: lSize, fallTo: fallTo);

  @override
  void updateRenderObject(BuildContext _, RenderGap renderObj) => renderObj
    ..lSize = lSize
    ..fallTo = fallTo;
}

class RenderGap extends RenderBox {
  RenderGap({required double lSize, Axis? fallTo})
      : _lSize = lSize,
        _fallTo = fallTo;

  double _lSize;
  double get lSize => _lSize;
  set lSize(double value) {
    if (_lSize == value) return;
    _lSize = value;
    markNeedsLayout();
  }

  Axis? _fallTo;
  Axis? get fallTo => _fallTo;
  set fallTo(Axis? value) {
    if (_fallTo == value) return;
    _fallTo = value;
    markNeedsLayout();
  }

  Axis? get _direction {
    final parentNode = parent;
    return (parentNode is RenderFlex) ? parentNode.direction : fallTo;
  }

  @override
  double computeMinIntrinsicWidth(double height) => 0.0;

  @override
  double computeMaxIntrinsicWidth(double height) => 0.0;

  @override
  double computeMinIntrinsicHeight(double width) => 0.0;

  @override
  double computeMaxIntrinsicHeight(double width) => 0.0;

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    final direct = _direction;

    if (direct == null) {
      throw FlutterError(
        'A Gap widget must be placed directly inside a Flex widget '
        'or its fallbackDirection must not be null',
      );
    }

    final size = (direct == Axis.horizontal) ? Size(lSize, 0) : Size(0, lSize);
    return constraints.constrain(size);
  }

  @override
  void performLayout() => size = computeDryLayout(constraints);
}
