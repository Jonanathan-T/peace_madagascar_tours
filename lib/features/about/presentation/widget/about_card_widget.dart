import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class AboutCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String>? images;
  const AboutCardWidget({
    required this.icon,
    required this.title,
    required this.description,
    this.images,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Taille maximum disponible
        double maxWidth = constraints.maxWidth * .32;
        double maxHeight = constraints.maxHeight;

        // Dimensions minimales souhaitées
        double minWidth = 150;
        double minHeight = 100;

        // Calcul de la largeur et de la hauteur tout en respectant le ratio
        double width = maxWidth >= minWidth ? maxWidth : minWidth;
        double height = width / (16 / 9); // Exemple : Ratio 16:9

        // Assurer que la hauteur reste dans les limites
        if (height > maxHeight) {
          height = maxHeight;
          width = height * (16 / 9);
        }
        return Container(
          width: width,
          // height: MediaQuery.sizeOf(context).height * .7,
          constraints: BoxConstraints(minHeight: minHeight, minWidth: minWidth),
          padding: const EdgeInsets.all(16),
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.grey[300]!),
          //   borderRadius: BorderRadius.circular(8),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16.0,
                children: [
                  CircleAvatar(
                    backgroundColor: AppStyles.accentColor,
                    child: Icon(icon, size: 24, color: Colors.white),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppStyles.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(color: Colors.grey[600]),
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
              ),
              const SizedBox(height: 20.0),
              if (images != null && images!.isNotEmpty) ...[
                Container(
                  height: MediaQuery.sizeOf(context).height * .5,
                  margin: const EdgeInsets.only(top: 16.0, bottom: 50.0),
                  // color: Colors.amber,
                  child: Row(
                    spacing: 16.0,
                    children: List<Widget>.generate(
                      images!.length,
                      (index) => Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(images![index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}
