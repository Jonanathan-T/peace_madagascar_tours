import 'package:flutter/material.dart';

import '../shared.dart';

class HomeLayout extends StatelessWidget {
  final Widget? sliver;

  /// "Le paramètre 'slivers' doit être un Sliver comme SliverList ou SliverFillRemaining."
  const HomeLayout({super.key, this.sliver});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                shadowColor: Colors.black45,
                elevation: 2.0,
                forceElevated: true,
                expandedHeight: 150.0,
                flexibleSpace: AppBarContentWidget(),
              ),
              if (sliver != null) sliver!,
              SliverToBoxAdapter(child: Copyright()),
            ],
          );
        },
      ),
    );
  }
}
