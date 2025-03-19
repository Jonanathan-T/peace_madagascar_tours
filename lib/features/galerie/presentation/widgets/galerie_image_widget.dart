import 'package:flutter/material.dart';

class GalerieImageWidget extends StatefulWidget {
  final String assetImage;

  const GalerieImageWidget({super.key, required this.assetImage});

  @override
  State<GalerieImageWidget> createState() => _GalerieImageWidgetState();
}

class _GalerieImageWidgetState extends State<GalerieImageWidget> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scale = 1.2;
        });
      },
      onExit: (_) {
        setState(() {
          scale = 1.0;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: AnimatedScale(
          scale: scale,
          duration: Duration(milliseconds: 200),
          child: Image.asset(widget.assetImage, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
