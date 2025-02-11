// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';
import '../sections/destination_section.dart';
import '../sections/discover_section.dart';
import '../sections/feature_section.dart';
import '../sections/hero_section.dart';
import '../sections/why_use_section.dart';
import '../widgets/app_bar_content_widget.dart';

// @RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> images = [
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppStyles.white,
      appBar: AppBar(
        backgroundColor: AppStyles.white,
        surfaceTintColor: AppStyles.white,
        shadowColor: Colors.black45,
        elevation: 2.0,
        centerTitle: true,
        title: const AppBarContent(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50.0).copyWith(
          top: 10.0,
        ),
        children: [
          // const AppBarContent(),
          HeroSection(size: size),
          const FeatureSection(),
          WhyUsSection(size: size),
          DiscoverSection(images: images, size: size),
          SizedBox(height: 40.0),
          DestinationSection(size: size),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
