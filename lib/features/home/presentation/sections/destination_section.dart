import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';
import '../widgets/app_bar_content_widget.dart';
import '../widgets/tourist_destination_widget.dart';

final List<TouristDestination> destinations = [
  TouristDestination(
    name: "Andasibe",
    description:
        "Connue pour le Parc National d’Andasibe-Mantadia, c'est un haut lieu pour observer les lémuriens et la forêt humide.",
    imageUrl: "assets/images/IMG-20241113-WA0005.jpg",
  ),
  TouristDestination(
    name: "Croisière fluvial sur le Canal de Pangalane",
    description:
        "Un canal de 600 km offrant des paysages luxuriants et reliant villages et lagunes sur la côte est.",
    imageUrl: "assets/images/IMG-20241113-WA0019.jpg",
  ),
  TouristDestination(
    name: "Ankanin'ny Nofy ",
    description:
        "Un village paisible au bord du Lac Ampitabe, idéal pour l'écotourisme et la nature.",
    imageUrl: "assets/images/IMG-20241113-WA0022.jpg",
  ),
  TouristDestination(
    name: "Manambato",
    description:
        "Village situé près du Lac Rasoabe, point de départ pour explorer les réserves naturelles environnantes.",
    imageUrl: "assets/images/IMG-20241113-WA0002.jpg",
  ),
  TouristDestination(
    name: "Foulpointe",
    description:
        "Station balnéaire prisée pour ses plages de sable fin et ses eaux turquoise.",
    imageUrl: "assets/images/IMG-20241113-WA0001.jpg",
  ),
  TouristDestination(
    name: "Sainte Marie",
    description:
        "Île paradisiaque célèbre pour ses plages, ses récifs coralliens et les baleines à bosse.",
    imageUrl: "assets/images/IMG-20241113-WA0006.jpg",
  ),
];

class DestinationSection extends StatelessWidget {
  final Size size;
  const DestinationSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
              "VISA CATEGORIE",
              style: TextStyle(color: AppStyles.primaryColor),
            ),
          ],
        ),
        Text(
          "Nos Destinations",
          style: AppStyles.headerTextStyle.copyWith(
            color: AppStyles.primaryColor,
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          width: size.width * .45,
          child: Text(
            "Nous vous invitons à explorer la beauté de l'Est de Madagascar à travers nos circuits soigneusement élaborés. Voici quelques-unes des merveilles que vous découvrirez avec nous :",
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          width: size.width * 0.8,
          child: TouristDestinationsWidget(destinations: destinations),
        ),
        const SizedBox(height: 30.0),
        Container(
          width: size.width * 0.8,
          height: size.height * 0.75,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image:
                          AssetImage("assets/images/IMG-20241113-WA0006.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 25.0),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const DestinationDescription(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40.0),
        AdventureSection(size: size),
        Container(
          height: size.height * .75,
          width: size.width * 0.8,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage("assets/images/IMG-20241113-WA0011.jpg"),
              alignment: Alignment.centerRight,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(right: size.width * .05),
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF113275),
                  Color(0xFF3C82DF),
                  Color(0x003C82DF),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10.0,
                  children: [
                    Image.asset(
                      "assets/arrow.png",
                      filterQuality: FilterQuality.high,
                    ),
                    Text(
                      "RESERVATION",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Transform.flip(
                      flipX: true,
                      child: Image.asset(
                        "assets/arrow.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Peace Madagascar Tours\nvoyager avec-nous",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 43.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
      description:
          "Notre équipe dévouée est à vos côtés pour anticiper vos envies et transformer chaque instant en une expérience exceptionnelle, rien qu'à vous.",
    ),
    Adventure(
      image: "assets/images/IMG-20241113-WA0016.jpg",
      title: "Respect de l’Environnement",
      description:
          "Nous croyons en un tourisme responsable, où chaque voyage contribue à préserver la beauté de la nature et à soutenir les communautés locales.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .85,
      width: size.width * 0.8,
      padding: const EdgeInsets.all(10.0),
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
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: List<Widget>.generate(
                adventures.length,
                (index) {
                  final adventure = adventures[index];
                  return AdventureWidget(size: size, adventure: adventure);
                },
              ),
            ),
          ),
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
      width: size.width * .25,
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
                    child: Text(
                      adventure.description,
                      overflow: TextOverflow.clip,
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

class DestinationDescription extends StatelessWidget {
  const DestinationDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppStyles.accentColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.public,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Peace Madagascar Tours",
                  style: TextStyle(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(right: 50.0),
                    child: Text(
                      'De plus, nous pouvons personnaliser vos voyages partout à Madagascar et vous permettant ainsi d\'explorer chaque recoin de ce pays fascinant !',
                      style: TextStyle(
                        color: Colors.black54,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                OutlinedButton.icon(
                  onPressed: launchEmail,
                  icon: const Icon(Icons.arrow_right_alt,
                      color: AppStyles.primaryColor),
                  iconAlignment: IconAlignment.end,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: AppStyles.primaryColor,
                    ), // Change la couleur du contour ici
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text(
                      "Contacter-nous",
                      style: TextStyle(color: AppStyles.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/IMG-20241113-WA0023.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
