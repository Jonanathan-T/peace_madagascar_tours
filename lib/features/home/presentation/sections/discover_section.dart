import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class DiscoverSection extends StatefulWidget {
  final List<String> images;
  final Size size;

  const DiscoverSection({required this.images, required this.size, super.key});

  @override
  State<DiscoverSection> createState() => _DiscoverSectionState();
}

class _DiscoverSectionState extends State<DiscoverSection> {
  late int currentIndex;
  late CarouselController controller;

  @override
  void initState() {
    super.initState();
    currentIndex = 3;
    controller = CarouselController(initialItem: currentIndex);
    controller.addListener(() {
      final position = controller.position;
      debugPrint("position: ${position.toString()}\n");
      // Utilise la largeur du viewport du carrousel
      final viewport = position.viewportDimension;
      if (position.hasPixels && viewport > 0) {
        final index = ((position.pixels / viewport) * 10).round();
        debugPrint(index.toString());
        setState(() {
          currentIndex = index;

          //debugPrint(currentIndex.toString());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: widget.size.height * 0.85,
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth <= 768 ? 20.0 : 100.0,
            vertical: 50.0,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF9C407),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Icon(
                      Icons.flight_takeoff,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  AutoSizeText(
                    "DECOUVERTES:",
                    style: AppStyles.headerTextStyle.copyWith(fontSize: 32.0),
                    maxLines: 1,
                    minFontSize: 20,
                  ),
                  /*
                  Expanded(child: SizedBox()),
                  IconButton.outlined(
                    onPressed: () {
                      setState(() {
                        currentIndex += 1;
                        controller = CarouselController(initialItem: currentIndex);
                      });
                    },
                    icon: Center(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  IconButton.outlined(
                    onPressed: () {
                      setState(() {
                        currentIndex -= 1;
                        controller = CarouselController(initialItem: currentIndex);
                      });
                    },
                    icon: Center(
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),*/
                ],
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: CarouselView.weighted(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  elevation: 2.0,
                  itemSnapping: true,
                  shrinkExtent: 0.5,
                  flexWeights: (constraints.maxWidth >= 375) ? const <int>[1, 1, 6, 1] : [1],
                  children: List<Widget>.generate(
                    widget.images.length,
                    (int index) {
                      debugPrint("index image: $index");
                      debugPrint("currentIndex: $currentIndex");
                      return SizedBox.expand(
                        child: Stack(
                          children: [
                            SizedBox.expand(
                              child: Image.asset(
                                widget.images[index],
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
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.images.length + 1,
                  (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 8,
                      width: currentIndex == index ? 24 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: currentIndex == index ? AppStyles.primaryColor : Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
