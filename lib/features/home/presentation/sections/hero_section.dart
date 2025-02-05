import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class HeroSection extends StatelessWidget {
  final Size size;
  const HeroSection({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.85,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(
            'assets/images/IMG-20241113-WA0003.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: -70,
            bottom: -100,
            child: Image.asset(
              'assets/baobab.png',
              width: 350,
              height: 350,
              fit: BoxFit.scaleDown,
            ),
          ),
          Positioned(
            top: -50,
            right: -75,
            child: Image.asset(
              'assets/baobab.png',
              width: 350,
              height: 350,
              fit: BoxFit.scaleDown,
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvenue Chez\nPeace Madagascar\nTours !',
                  style: AppStyles.headerTextStyle,
                ),
                const SizedBox(height: 8.0),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
                  iconAlignment: IconAlignment.end,
                  label: const Text(
                    "Voir plus",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
