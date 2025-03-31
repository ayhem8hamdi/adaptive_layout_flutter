import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xffDBDBDB)),
            child: Center(
              child: Icon(
                Icons.heart_broken,
                color: Colors.black,
                size: 49,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DrawerContentItem(icon: Icons.home, text: 'H o m e'),
          DrawerContentItem(icon: Icons.settings, text: 'S e t t i n g s'),
          DrawerContentItem(icon: Icons.logout, text: 'L o g O u t')
        ],
      ),
    );
  }
}

class DrawerContentItem extends StatelessWidget {
  const DrawerContentItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: const TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}
