import 'package:flutter/material.dart';
import 'package:responsive_pratique/views/widgets/tablet_layout.dart';
import 'package:responsive_pratique/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: DesktopRightComponent())
      ],
    );
  }
}

class DesktopRightComponent extends StatelessWidget {
  const DesktopRightComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.20,
      height: double.infinity,
      child: const Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Expanded(
            flex: 3,
            child: DesktopRightComponentContainer(color: Color(0XFFB4B4B4)),
          ),
          Expanded(
            flex: 1,
            child: DesktopRightComponentContainer(color: Colors.white),
          ),
          SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }
}

class DesktopRightComponentContainer extends StatelessWidget {
  const DesktopRightComponentContainer({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
    );
  }
}
