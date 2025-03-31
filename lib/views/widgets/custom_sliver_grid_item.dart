import 'package:flutter/material.dart';

class CustomSliverGridItem extends StatelessWidget {
  const CustomSliverGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFFB4B4B4)),
    );
  }
}
