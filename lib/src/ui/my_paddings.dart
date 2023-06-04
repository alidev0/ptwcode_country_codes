import 'package:flutter/widgets.dart';

class VPadding extends StatelessWidget {
  const VPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: child,
    );
  }
}

class HPadding extends StatelessWidget {
  const HPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: child,
    );
  }
}

class UpPadding extends StatelessWidget {
  const UpPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: value), child: child);
  }
}

class AllPadding extends StatelessWidget {
  const AllPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(value), child: child);
  }
}

class LeftPadding extends StatelessWidget {
  const LeftPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: value), child: child);
  }
}

class RightPadding extends StatelessWidget {
  const RightPadding(this.child, this.value, {super.key});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: value), child: child);
  }
}
