import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/app_styles.dart';

class TouristDestinationsWidget extends StatelessWidget {
  TouristDestinationsWidget({super.key});

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
      imageUrl: "assets/images/IMG-20241113-WA0026.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // Utilisez LayoutBuilder pour la réactivité
      builder: (BuildContext context, BoxConstraints constraints) {
        int crossAxisCount = 2; // Nombre de colonnes par défaut

        // Adaptez le nombre de colonnes en fonction de la largeur de l'écran
        if (constraints.maxWidth > 768) {
          crossAxisCount = 3;
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 1;
        }

        return GridView.builder(
          shrinkWrap: true,
          physics:
              NeverScrollableScrollPhysics(), // Empêche le défilement dans le GridView
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Nombre de colonnes variable
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio:
                1 / (4.5 / 5), // Ratio 1:1 pour les cartes (peut être ajusté)
          ),
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            final destination = destinations[index];
            return Card(
              color: AppStyles.white,
              shadowColor: Colors.black38,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black12),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InkWell(
                // Ajout d'InkWell pour la gestion des taps
                onTap: () {
                  // Gérez ici l'action lorsque l'utilisateur tape sur une carte
                  if (kDebugMode) {
                    print("Tapped on ${destination.name}");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // Utilisez Column pour une meilleure disposition verticale
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 10.0,
                    children: [
                      Expanded(
                        // L'image occupe l'espace disponible
                        flex: 2,
                        child: ClipRRect(
                          // ClipRRect pour gérer les bords arrondis de l'image
                          borderRadius: BorderRadius.circular(5.0),
                          // child: CachedNetworkImage(
                          //   // Utilisez CachedNetworkImage pour les images
                          //   imageUrl: destination.imageUrl,
                          //   placeholder: (context, url) => Center(
                          //     child: CircularProgressIndicator(),
                          //   ), // Centrez le CircularProgressIndicator
                          //   errorWidget: (context, url, error) =>
                          //       Icon(Icons.error),
                          //   fit: BoxFit.cover,
                          // ),
                          child: Image.asset(
                            destination.imageUrl,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.0,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0), // Ajout de padding pour le texte
                              child: Text(
                                destination.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      16.0, // Taille de texte plus cohérente
                                  color: AppStyles.primaryColor,
                                ),
                              ),
                            ),
                            Text(
                              destination.description,
                              overflow: TextOverflow
                                  .clip, // Empêche le texte de dépasser
                              maxLines: 4, // Limite le nombre de lignes
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class TouristDestination {
  final String name;
  final String description;
  final String imageUrl;

  TouristDestination({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
