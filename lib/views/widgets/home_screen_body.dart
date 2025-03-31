import 'package:flutter/material.dart';
import 'package:responsive_pratique/views/widgets/desktop_layout.dart';
import 'package:responsive_pratique/views/widgets/mobile_layout.dart';
import 'package:responsive_pratique/views/widgets/tablet_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 900) {
        return const DesktopLayout();
      } else if (constrains.maxWidth > 600 && constrains.maxWidth <= 900) {
        return const TabletLayout();
      } else {
        return const MobileLayout();
      }
    });
  }
}
