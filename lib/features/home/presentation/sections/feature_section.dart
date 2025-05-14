import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});
  static const List<Feature> list = [
    Feature(
      icon: Icons.restaurant_menu,
      title: 'Visites gastronomiques',
      description:
          "Découvrez les saveurs authentiques et les trésors culinaires du monde à travers des expériences gastronomiques inoubliables. Que ce soit en dégustant des plats traditionnels préparés par des chefs locaux, en explorant des marchés animés ou en participant à des ateliers de cuisine, ces visites vous plongeront au cœur de la culture et des traditions d'une destination. Parfait pour les amateurs de cuisine et les curieux en quête de nouvelles saveurs !",
    ),
    Feature(
      icon: Icons.beach_access,
      title: 'Opportunités de voyage',
      description:
          "Ne manquez pas les occasions uniques de découvrir le monde ! Que ce soit des promotions exceptionnelles, des destinations émergentes ou des expériences hors des sentiers battus, ces opportunités de voyage sont conçues pour inspirer votre prochaine aventure. Profitez de conseils personnalisés, d'itinéraires sur mesure et d'offres exclusives pour rendre chaque voyage mémorable et accessible.",
    ),
    Feature(
      icon: Icons.travel_explore,
      title: 'Planification de voyage en solo',
      description:
          "Voyager seul est une expérience enrichissante et libératrice. Grâce à des conseils pratiques, des astuces de sécurité et des idées d'itinéraires adaptés, la planification de votre voyage en solo devient un jeu d'enfant. Que vous cherchiez à explorer des villes dynamiques, à vous reconnecter avec la nature ou à vivre des rencontres inattendues, cette ressource vous guide pas à pas pour créer un voyage unique et inoubliable.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.center,
        children: List<Widget>.generate(list.length, (index) {
          return FeatureCard(
            icon: list[index].icon,
            title: list[index].title,
            description: list[index].description,
          );
        }),
      ),
    );
  }
}

class Feature {
  final IconData icon;
  final String title;
  final String description;

  const Feature({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double parentWidth = constraints.maxWidth.isFinite ? constraints.maxWidth : MediaQuery.of(context).size.width;
      // Taille maximum disponible
      double maxWidth = parentWidth * .32;
      double maxHeight = constraints.maxHeight;

      // Dimensions minimales souhaitées
      double minWidth = 360;
      double minHeight = 210;

      // Calcul de la largeur et de la hauteur tout en respectant le ratio
      double width = maxWidth >= minWidth ? maxWidth : minWidth;
      double height = width / (16 / 9); // Exemple : Ratio 16:9

      int maxLines;
      if (constraints.maxWidth > 1380) {
        maxLines = 6;
      } else {
        maxLines = 4;
      }

      // Assurer que la hauteur reste dans les limites
      if (height > maxHeight) {
        height = maxHeight;
        width = height * (16 / 9);
      }
      return Container(
        width: width,
        height: height,
        constraints: BoxConstraints(minHeight: minHeight, minWidth: minWidth),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: AppStyles.accentColor,
              child: Icon(icon, size: 24, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style:  TextStyle(
                fontSize: constraints.maxWidth <420 ? 18 : 20,
                fontWeight: FontWeight.bold,
                color: AppStyles.primaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[600],fontSize:  constraints.maxWidth <420 ? 12 : null),
              overflow: TextOverflow.ellipsis,
              maxLines: maxLines,
            ),
          ],
        ),
      );
    });
  }
}
