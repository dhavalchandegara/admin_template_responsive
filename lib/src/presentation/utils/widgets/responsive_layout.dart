import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BoxConstraints constraints) mobile;

  final Widget Function(BoxConstraints constraints) tablet;

  final Widget Function(BoxConstraints constraints) desktop;

  const ResponsiveLayout({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.minWidth > 1100) {
          return desktop(constraints);
        } else if (constraints.minWidth > 900) {
          return tablet(constraints);
        } else {
          return mobile(constraints);
        }
      },
    );
  }
}
