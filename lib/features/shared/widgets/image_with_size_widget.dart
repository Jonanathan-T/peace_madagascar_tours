import 'package:flutter/material.dart';

class ImageWithSizeWidget extends StatelessWidget {
  final String imagePath;
  final double size;
  final Function()? onTap;
  const ImageWithSizeWidget({required this.imagePath, required this.size, super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        height: size,
        width: size,
        fit: BoxFit.contain,
      ),
    );
  }
}
