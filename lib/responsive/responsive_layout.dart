import 'package:flutter/material.dart';
import 'package:responsive_design_flutter/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < desktopWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
