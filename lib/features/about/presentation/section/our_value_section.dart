import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../shared/shared.dart';
import '../widget/about_card_widget.dart';

@RoutePage()
class OurValuesSection extends StatelessWidget {
  const OurValuesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return HomeLayout(
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: (constraints.maxWidth<=400)?0:MediaQuery.sizeOf(context).width * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 10.0,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0).copyWith(top: 20.0),
                        child: Column(
                          spacing: 8.0,
                          children: [
                            Text(
                              "Nos Valeurs",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppStyles.accentColor,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Peaces Madagascar Tours",
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    color: AppStyles.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      AboutCardWidget(
                        title: "Tourisme Responsable",
                        description:
                            "Notre engagement envers un tourisme responsable se traduit par des actions concrètes: respect de l'environnement, réduction de notre empreinte carbone, soutien aux communautés locales à travers des projets durables, et promotion de la culture malgache authentique.",
                        icon: Icons.eco,
                        images: [
                          "assets/images/IMG-20241113-WA0046.jpg",
                          "assets/images/IMG-20241113-WA0038.jpg",
                        ],
                      ),
                      AboutCardWidget(
                        title: "Authenticité et Singularité",
                        description:
                            "Nous créons des voyages sur mesure qui reflètent vos aspirations. Chaque circuit est unique, conçu pour vous faire découvrir Madagascar hors des sentiers battus, avec un guide local expérimenté qui partage sa passion et sa connaissance approfondie du pays.",
                        icon: Icons.star,
                        images: [
                          "assets/images/IMG-20241113-WA0010.jpg",
                          "assets/images/IMG-20241113-WA0037.jpg",
                          "assets/images/IMG-20241113-WA0020.jpg",
                          "assets/images/IMG-20241113-WA0039.jpg",
                        ],
                      ),
                      AboutCardWidget(
                        title: "Paix et Tranquillité",
                        description:
                            "Notre philosophie 'No work, no stress, peace Madagascar' guide chaque aspect de nos services. Nous nous occupons de tous les détails pour que vous puissiez vous détendre et profiter pleinement de votre séjour, dans la sérénité et la tranquillité d'esprit.",
                        icon: Icons.spa,
                        images: [
                          "assets/images/IMG-20241113-WA0026.jpg",
                          "assets/images/IMG-20241113-WA0024.jpg",
                          "assets/images/IMG-20241113-WA0041.jpg",
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
