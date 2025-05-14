
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HeroSection extends StatelessWidget {
  final Size size;
  const HeroSection({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      StackFit stackFit;
      double left;
      double alpha;
      bool isFull;
      if (constraints.maxWidth >= 600) {
        stackFit = StackFit.loose;
        left = 30;
        isFull = false;
        alpha = 0.2;
      } else {
        stackFit = StackFit.expand;
        left = 10;
        isFull = true;
        alpha = 0.5;
      }
      return ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          height: size.height * 0.85,
          decoration: BoxDecoration(
            color: AppStyles.primaryColor,
          ),
          child: Stack(
            fit: stackFit,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                'assets/images/IMG-20241113-WA0003.jpg',
                colorBlendMode: BlendMode.xor,
                fit: BoxFit.cover,
              ),
              AnimatedContainer(
                color: Colors.black.withValues(alpha: alpha),
                duration: Duration(milliseconds: 500),
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
              if (!isFull)
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
                left: left,
                right: left,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: AutoSizeText(
                        'Bienvenue Chez\nPeace Madagascar\nTours !',
                        style: AppStyles.headerTextStyle,
                        maxLines: 3,
                      ),
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
        ),
      );
    });
  }
}
