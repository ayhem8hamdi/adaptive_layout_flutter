import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final Widget mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 900) {
        return desktopLayout;
      } else if (constrains.maxWidth > 600 && constrains.maxWidth <= 900) {
        return tabletLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
