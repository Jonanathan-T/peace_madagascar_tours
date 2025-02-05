import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class DiscoverSection extends StatelessWidget {
  final List<String> images;
  final Size size;
  final CarouselController controller = CarouselController(initialItem: 1);
  DiscoverSection({required this.images, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.85,
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF9C407),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10.0,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10.0,
            children: [
              Icon(Icons.flight_takeoff, color: Colors.white, size: 50.0),
              Text("DECOUVERTES:", style: AppStyles.headerTextStyle),
            ],
          ),
          Expanded(
            child: CarouselView.weighted(
              controller: controller,
              scrollDirection: Axis.horizontal,
              elevation: 2.0,
              itemSnapping: true,
              reverse: true,
              shrinkExtent: 0.5,
              flexWeights: const <int>[1, 4, 1],
              children: List<Widget>.generate(
                images.length,
                (int index) {
                  return MouseRegion(
                    child: SizedBox.expand(
                      child: Stack(
                        children: [
                          SizedBox.expand(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 15.0,
                            right: 15.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset('assets/logos/logo.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
