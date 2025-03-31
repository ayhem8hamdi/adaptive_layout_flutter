import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.x});
  final double x;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: x,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: const Color(0XFFECECEC),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
