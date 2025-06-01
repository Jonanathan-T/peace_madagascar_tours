import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:peaces_madagascar_tours/core/utils/extensions/context_extensions.dart';

import '../../../../core/core.dart';
import '../../../shared/layouts/home_layout.dart';
import '../widget/about_card_widget.dart';

@RoutePage()
class OurMissionsSection extends StatelessWidget {
  const OurMissionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return HomeLayout(
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: (constraints.maxWidth <= 400) ? 0 : context.screenWidth * .05),
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
                            "Nos Engagements",
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
                      title: "Expériences de Qualité",
                      description:
                          "Nous nous efforçons de créer des itinéraires de voyage exceptionnels et personnalisés, en sélectionnant avec soin des hébergements de charme, des activités enrichissantes et des guides locaux experts. Chaque détail est pensé pour vous offrir une immersion authentique et mémorable au cœur de Madagascar, en veillant à ce que chaque moment de votre séjour soit une source d'émerveillement et de découverte.",
                      icon: Icons.map,
                      images: [
                        "assets/images/IMG-20241113-WA0028.jpg",
                        // "assets/images/IMG-20241113-WA0038.jpg",
                      ],
                    ),
                    AboutCardWidget(
                      title: "Soutien Local",
                      description:
                          "Notre approche du soutien local se traduit par une collaboration étroite avec les communautés malgaches. Nous privilégions les partenariats avec des entreprises locales, des artisans et des producteurs, contribuant ainsi à dynamiser l'économie locale et à préserver les savoir-faire traditionnels. De plus, une partie de nos bénéfices est réinvestie dans des projets communautaires visant à améliorer les conditions de vie et à promouvoir l'éducation et la santé.",
                      icon: Icons.people,
                      images: [
                        "assets/images/IMG-20241113-WA0015.jpg",
                        "assets/images/IMG-20241113-WA0032.jpg",
                        "assets/images/IMG-20241113-WA0046.jpg",
                        "assets/images/IMG-20241113-WA0036.jpg",
                      ],
                    ),
                    AboutCardWidget(
                      title: "Respect de la Nature",
                      description:
                          "Nous sommes profondément attachés à la préservation de l'environnement unique de Madagascar. Nous adoptons des pratiques de tourisme responsable en minimisant notre impact écologique, en sensibilisant nos voyageurs à la fragilité des écosystèmes locaux et en soutenant des initiatives de conservation. Nous encourageons également l'utilisation de transports écologiques et la réduction des déchets, afin de contribuer à la protection de la biodiversité exceptionnelle de l'île.",
                      icon: Icons.nature,
                      images: [
                        "assets/images/IMG-20241113-WA0035.jpg",
                        "assets/images/IMG-20241113-WA0027.jpg",
                        "assets/images/IMG-20241113-WA0051.png",
                        "assets/images/IMG-20241113-WA0043.jpg",
                      ],
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
