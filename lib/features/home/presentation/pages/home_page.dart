import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:peaces_madagascar_tours/features/shared/layouts/home_layout.dart';

import '../sections/destination_section.dart';
import '../sections/discover_section.dart';
import '../sections/feature_section.dart';
import '../sections/hero_section.dart';
import '../sections/why_use_section.dart';

const List<String> images = [
  'assets/images/IMG-20241113-WA0001.jpg',
  'assets/images/IMG-20241113-WA0002.jpg',
  'assets/images/IMG-20241113-WA0005.jpg',
  'assets/images/IMG-20241113-WA0007.jpg',
  'assets/images/IMG-20241113-WA0011.jpg',
  'assets/images/IMG-20241113-WA0014.jpg',
  'assets/images/IMG-20241113-WA0015.jpg',
  'assets/images/IMG-20241113-WA0019.jpg',
  'assets/images/IMG-20241113-WA0021.jpg',
  'assets/images/IMG-20241113-WA0022.jpg',
];

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return HomeLayout(
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            LayoutBuilder(
              builder: (context, constraints) {
                double padding = constraints.maxWidth < 790 ? 20.0 : 50.0;

                return ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 10.0),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: HeroSection(size: size),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: FeatureSection(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: WhyUsSection(size: size),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: DiscoverSection(images: images, size: size),
                    ),
                    SizedBox(height: 40.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: DestinationSection(size: size),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
