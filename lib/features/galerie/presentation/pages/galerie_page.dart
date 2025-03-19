import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; // Ajout du package
import 'package:peaces_madagascar_tours/core/themes/app_styles.dart';

import '../../../shared/shared.dart';
import '../widgets/galerie_image_widget.dart';

@RoutePage()
class GaleriePage extends StatelessWidget {
  const GaleriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = 1;
          if (constraints.maxWidth >= 1024) {
            crossAxisCount = 4;
          } else if (constraints.maxWidth >= 790) {
            crossAxisCount = 3;
          } else if (constraints.maxWidth >= 450) {
            crossAxisCount = 2;
          }
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
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(top: 20.0),
                  child: Column(
                    spacing: 8.0,
                    children: [
                      Text(
                        "Galerie Photos",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppStyles.accentColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Peaces Madagascar Tours",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: AppStyles.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 50.0).copyWith(
                  top: 20.0,
                ),
                sliver: SliverMasonryGrid.count(
                    crossAxisCount: crossAxisCount,
                    childCount: 49,
                    mainAxisSpacing: 15.0,
                    crossAxisSpacing: 15.0,
                    itemBuilder: (context, index) {
                      int imageIndex = index + 1;
                      final String assetImage = "assets/images/IMG-20241113-WA00${imageIndex < 10 ? "0$imageIndex" : imageIndex}.jpg";
                      return GalerieImageWidget(assetImage: assetImage);
                    }),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Votre visite a illuminé notre journée ✨",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: AppStyles.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "À très vite pour de nouvelles découvertes qui, on en est sûrs, vous éblouiront !",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppStyles.accentColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Copyright()),
            ],
          );
        },
      ),
    );
  }
}
