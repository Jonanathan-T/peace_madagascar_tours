import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../shared/shared.dart';

@RoutePage()
class WhoAreWeSection extends StatelessWidget {
  const WhoAreWeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
      sliver: SliverFillRemaining(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0).copyWith(top: 20.0, bottom: 50.0),
                child: Column(
                  spacing: 8.0,
                  children: [
                    Text(
                      "Qui sommes-nous ?",
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
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .5,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 25.0,
                  children: [
                    Flexible(
                      child: AspectRatio(
                        aspectRatio: 4 / 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/images/IMG-20241113-WA0019.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: AspectRatio(
                        aspectRatio: 4.1 / 4,
                        child: Container(
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            color: AppStyles.accentColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            spacing: 10,
                            children: [
                              Text.rich(
                                style: TextStyle(color: Colors.white),
                                TextSpan(
                                  text: '"No work, no stress, peace Madagascar,"',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "\n\nRésume parfaitement notre philosophie : nous croyons que les vacances doivent être un moment de détente où vous pouvez échapper au stress du quotidien et vous ressourcer au cœur de la nature malgache.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                        wordSpacing: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Row(
                                spacing: 10,
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage("assets/profile.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vanila Chant Joëlle",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        Text(
                                          "Co-fondatrice de Peace Madagascar Tours",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 2.2,
                margin: EdgeInsets.only(top: 75.0),
                padding: EdgeInsets.only(left: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: AppStyles.primaryColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  '"Les offres de Peace Madagascar Tours se démarquent par leur singularité. Un accompagnement personnalisé, attentif aux détails, contribue à rendre chaque séjour harmonieux et authentique. L’équipe, alliant expérience et créativité, s’engage avec passion et rigueur à concevoir des itinéraires où chaque instant est pensé pour transformer les journées en expériences mémorables. Notre approche repose sur l’expertise discrète et la volonté constante de garantir des voyages empreints de sens et de découverte."',
                  style: TextStyle(fontStyle: FontStyle.italic),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
