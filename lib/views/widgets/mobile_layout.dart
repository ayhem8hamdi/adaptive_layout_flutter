import 'package:flutter/material.dart';
import 'package:responsive_pratique/views/widgets/custom_list_view_item.dart';
import 'package:responsive_pratique/views/widgets/custom_sliver_grid_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.of(context).size.height;
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      const CustomSliverGrid(),
      CustomListView(
        y: y * 0.093,
      )
    ]);
  }
}

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => const CustomSliverGridItem());
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.y});
  final double y;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 15,
        itemBuilder: (context, index) => CustomListViewItem(
              x: y,
            ));
  }
}
