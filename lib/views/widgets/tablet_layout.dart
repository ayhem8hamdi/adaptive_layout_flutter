import 'package:flutter/material.dart';
import 'package:responsive_pratique/views/widgets/mobile_layout.dart';
import 'package:responsive_pratique/views/widgets/custom_sliver_grid_item.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.of(context).size.height;
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      const CustomSliverGridTabletLayout(),
      CustomListView(
        y: y * 0.1,
      )
    ]);
  }
}

class CustomSliverGridTabletLayout extends StatelessWidget {
  const CustomSliverGridTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.22,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const AspectRatio(
                aspectRatio: 1, child: CustomSliverGridItem())),
      ),
    );
  }
}
