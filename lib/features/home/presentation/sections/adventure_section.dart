import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class AdventureSection extends StatelessWidget {
  AdventureSection({
    super.key,
    required this.size,
  });

  final Size size;
  final List<Adventure> adventures = [
    Adventure(
      image: "assets/images/IMG-20241113-WA0012.jpg",
      title: "Expérience Inoubliable",
      description:
          "Nous créons des voyages sur mesure où chaque détail compte : des paysages époustouflants, des rencontres authentiques et des moments uniques qui deviendront vos plus précieux souvenirs.",
    ),
    Adventure(
      image: "assets/images/IMG-20241113-WA0015.jpg",
      title: "Service Personnalisé",
      description: "Notre équipe dévouée est à vos côtés pour anticiper vos envies et transformer chaque instant en une expérience exceptionnelle, rien qu'à vous.",
    ),
    Adventure(
      image: "assets/images/IMG-20241113-WA0016.jpg",
      title: "Respect de l’Environnement",
      description: "Nous croyons en un tourisme responsable, où chaque voyage contribue à préserver la beauté de la nature et à soutenir les communautés locales.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: context.screenWidth >= 768 ? size.height * .9 : null,
      width: size.width * 0.8,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 25.0),
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10.0,
            children: [
              Icon(
                Icons.flight_takeoff,
                color: Color(0xFF113175),
              ),
              Text(
                "AVENTURES",
                style: TextStyle(color: AppStyles.primaryColor),
              ),
            ],
          ),
          Text(
            "Pourquoi Choisir Peace Madagascar Tours ?",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppStyles.primaryColor,
            ),
          ),
          SizedBox(height: 25.0),
          //if (context.screenWidth >= 768)
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10.0,
            runSpacing: 10.0,
            children: List<Widget>.generate(
              adventures.length,
              (index) {
                final adventure = adventures[index];
                return AdventureWidget(size: size, adventure: adventure);
              },
            ),
          )
          // else
          //   ...List<Widget>.generate(
          //     adventures.length,
          //     (index) {
          //       final adventure = adventures[index];
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.stretch,
          //         children: [
          //           AdventureWidget(size: size, adventure: adventure),
          //           SizedBox(height: 10.0),
          //         ],
          //       );
          //     },
          //   )
        ],
      ),
    );
  }
}

class AdventureWidget extends StatelessWidget {
  const AdventureWidget({
    super.key,
    required this.size,
    required this.adventure,
  });

  final Size size;
  final Adventure adventure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 384.0,
      height: 450.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage(
                        adventure.image,
                      ),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          AspectRatio(
            aspectRatio: 9 / 4,
            child: Container(
              margin: EdgeInsets.only(left: 25.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.black12,
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  15.0,
                ).copyWith(
                  topRight: Radius.zero,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.0,
                children: [
                  Text(
                    "${adventure.title} : ",
                    style: TextStyle(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Flexible(
                    child: AutoSizeText(
                      adventure.description,
                      overflow: TextOverflow.clip,
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Adventure {
  final String image;
  final String title;
  final String description;

  Adventure({
    required this.image,
    required this.title,
    required this.description,
  });
}
